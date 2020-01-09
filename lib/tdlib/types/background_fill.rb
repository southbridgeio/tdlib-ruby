module TD::Types
  # Describes a fill of a background.
  class BackgroundFill < Base
    %w[
      solid
      gradient
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/background_fill/#{type}"
    end
  end
end
