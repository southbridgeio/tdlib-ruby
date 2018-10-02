module TD::Types
  # Contains the description of an error in a Telegram Passport element; for bots only.
  class InputPassportElementErrorSource < Base
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
      autoload TD::Types.camelize(type), "tdlib/types/input_passport_element_error_source/#{type}"
    end
  end
end
