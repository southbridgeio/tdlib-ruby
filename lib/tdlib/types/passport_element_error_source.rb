module TD::Types
  # Contains the description of an error in a Telegram Passport element.
  class PassportElementErrorSource < Base
    %w[
      unspecified
      data_field
      front_side
      reverse_side
      selfie
      translation_file
      translation_files
      file
      files
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/passport_element_error_source/#{type}"
    end
  end
end
