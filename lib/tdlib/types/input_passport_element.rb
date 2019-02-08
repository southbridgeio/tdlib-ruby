module TD::Types
  # Contains information about a Telegram Passport element to be saved.
  class InputPassportElement < Base
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
      autoload TD::Types.camelize(type), "tdlib/types/input_passport_element/#{type}"
    end
  end
end
