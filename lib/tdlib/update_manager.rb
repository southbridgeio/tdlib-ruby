class TD::UpdateManager
  attr_reader :handlers

  def initialize(td_client)
    @td_client = td_client
    @handlers = []
    @handlers_for_removal = []
    @mutex = Mutex.new
    init_update_loop
  end

  def add_handler(handler)
    @mutex.synchronize { @handlers << handler }
  end

  def remove_handler(handler)
    Thread.start do
      @mutex.synchronize { @handlers.delete(handler) }
    end
  end

  def stop
    @stopped = true
  end

  def stopped?
    !!@stopped
  end

  private

  def init_update_loop
    @update_loop_thread = Thread.start do
      loop { stopped? ? break : handle_update }
    end
  end

  def handle_update
    update = TD::Api.client_receive(@td_client, 10)
    @mutex.synchronize do
      @handlers.each { |h| h.call(update) } unless update.nil?
    end
  end
end
