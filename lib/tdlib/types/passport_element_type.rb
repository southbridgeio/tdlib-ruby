module TD::Types
  # Contains the type of a Telegram Passport element.
  class PassportElementType < Base
    %w[
      personal_details
      passport
      driver_license
      identity_card
      internal_passport
      address
      utility_bill
      bank_statement
      rental_agreement
      passport_registration
      temporary_registration
      phone_number
      email_address
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/passport_element_type/#{type}"
    end
  end
end
