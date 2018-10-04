module TD::Types
  # Contains the user's personal details.
  #
  # @attr first_name [String] First name of the user written in English; 1-255 characters.
  # @attr middle_name [String] Middle name of the user written in English; 0-255 characters.
  # @attr last_name [String] Last name of the user written in English; 1-255 characters.
  # @attr native_first_name [String] Native first name of the user; 1-255 characters.
  # @attr native_middle_name [String] Native middle name of the user; 0-255 characters.
  # @attr native_last_name [String] Native last name of the user; 1-255 characters.
  # @attr birthdate [TD::Types::Date] Birthdate of the user.
  # @attr gender [String] Gender of the user, "male" or "female".
  # @attr country_code [String] A two-letter ISO 3166-1 alpha-2 country code of the user's country.
  # @attr residence_country_code [String] A two-letter ISO 3166-1 alpha-2 country code of the user's residence country.
  class PersonalDetails < Base
    attribute :first_name, TD::Types::String
    attribute :middle_name, TD::Types::String
    attribute :last_name, TD::Types::String
    attribute :native_first_name, TD::Types::String
    attribute :native_middle_name, TD::Types::String
    attribute :native_last_name, TD::Types::String
    attribute :birthdate, TD::Types::Date
    attribute :gender, TD::Types::String
    attribute :country_code, TD::Types::String
    attribute :residence_country_code, TD::Types::String
  end
end
