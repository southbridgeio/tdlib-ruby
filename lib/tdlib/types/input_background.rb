module TD::Types
  # Contains information about background to set.
  class InputBackground < Base
    %w[
      local
      remote
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/input_background/#{type}"
    end
  end
end
