class TD::UpdateManager
  TIMEOUT = 30

  def initialize(td_client)
    @td_client = td_client
    @handlers = Concurrent::Array.new
    @mutex = Mutex.new
  end

  def add_handler(handler)
    @mutex.synchronize { @handlers << handler }
  end

  alias << add_handler

  def run
    Thread.start do
      loop { stopped? ? break : handle_update }
    end
  end

  def stop
    @stopped = true
    @mutex.synchronize { @handlers = [] }
  end

  def stopped?
    !!@stopped
  end

  private

  attr_reader :handlers

  def handle_update
    update = TD::Api.client_receive(@td_client, TIMEOUT)

    unless update.nil?
      extra  = update.delete('@extra')
      update = TD::Types.wrap(update)

      match_handlers!(update, extra).each { |h| h.async.run(update) }
    end
  end

  def match_handlers!(update, extra)
    @mutex.synchronize do
      matched_handlers = handlers.select { |h| h.match?(update, extra) }
      matched_handlers.each { |h| handlers.delete(h) if h.disposable? }
      matched_handlers
    end
  end
end
