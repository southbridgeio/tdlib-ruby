module TD::Types
  # A Telegram Passport element to be saved containing the user's personal details.
  #
  # @attr personal_details [TD::Types::PersonalDetails] Personal details of the user.
  class InputPassportElement::PersonalDetails < InputPassportElement
    attribute :personal_details, TD::Types::PersonalDetails
  end
end
