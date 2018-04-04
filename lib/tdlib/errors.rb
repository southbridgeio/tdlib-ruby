class TD::MissingLibPathError < StandardError
  def initialize(message = 'Please, configure the path to tdlibjson library')
    super
  end
end

class TD::TimeoutError < Timeout::Error
end
