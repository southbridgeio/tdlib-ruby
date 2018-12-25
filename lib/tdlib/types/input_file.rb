module TD::Types
  # Points to a file.
  class InputFile < Base
    %w[
      id
      remote
      local
      generated
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/input_file/#{type}"
    end
  end
end
