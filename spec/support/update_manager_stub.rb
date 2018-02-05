class UpdateManagerStub
  attr_reader :handlers

  def initialize(td_client, update)
    @td_client, @update, @handlers = td_client, update, []
  end

  def add_handler(handler)
    @handlers << handler
    handler.call(@update)
  end

  def remove_handler(handler)
    @handlers.delete(handler)
  end
end
