module TD::Types
  # A Telegram Passport element containing the user's personal details.
  #
  # @attr personal_details [TD::Types::PersonalDetails] Personal details of the user.
  class PassportElement::PersonalDetails < PassportElement
    attribute :personal_details, TD::Types::PersonalDetails
  end
end
