module TD::Types
  # Describes a type of a background.
  class BackgroundType < Base
    %w[
      wallpaper
      pattern
      solid
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/background_type/#{type}"
    end
  end
end
