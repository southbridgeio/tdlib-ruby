class TD::MissingLibPathError < StandardError
  def initialize(message = 'Please, configure the path to tdlibjson library')
    super
  end
end
