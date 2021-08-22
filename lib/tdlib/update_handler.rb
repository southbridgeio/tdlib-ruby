class TD::UpdateHandler
  include Concurrent::Async

  attr_reader :update_type, :extra

  def initialize(update_type, extra = nil, disposable = nil, &action)
    super()

    @action = action
    @update_type = update_type
    @extra = extra
    @disposable = disposable
  end

  def run(update)
    action.call(update)
  rescue StandardError => e
    warn("Uncaught exception in handler #{self}: #{e.message}")
    raise
  end

  def match?(update, extra = nil)
    update.is_a?(update_type) && (self.extra.nil? || self.extra == extra)
  end

  def disposable?
    disposable
  end

  def to_s
    "TD::UpdateHandler (#{update_type}#{": #{extra}" if extra})#{' disposable' if disposable?}"
  end

  alias inspect to_s

  private

  attr_reader :action, :disposable
end
