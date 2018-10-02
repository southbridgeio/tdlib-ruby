module TD::Types
  # Part of the face, relative to which a mask should be placed.
  class MaskPoint < Base
    %w[
      forehead
      eyes
      mouth
      chin
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/mask_point/#{type}"
    end
  end
end
