class TD::UpdateManager
  TIMEOUT = 30

  attr_reader :handlers

  def initialize(td_client)
    @td_client = td_client
    @handlers = []
    @mutex = Mutex.new
  end

  def add_handler(handler)
    @mutex.synchronize { @handlers << handler }
  end

  def remove_handler(handler)
    Thread.start do
      @mutex.synchronize { @handlers.delete(handler) }
    end
  end

  def run
    @update_loop_thread = Thread.start do
      loop { stopped? ? break : handle_update }
    end
  end

  def stop
    @stopped = true
  end

  def stopped?
    !!@stopped
  end

  private

  def handle_update
    update = TD::Api.client_receive(@td_client, TIMEOUT)
    @mutex.synchronize { handlers = @handlers.dup }
    handlers.each { |h| h.call(update) } unless update.nil?
  end
end
