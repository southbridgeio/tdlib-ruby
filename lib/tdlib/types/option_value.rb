module TD::Types
  # Represents the value of an option.
  class OptionValue < Base
    %w[
      boolean
      empty
      integer
      string
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/option_value/#{type}"
    end
  end
end
