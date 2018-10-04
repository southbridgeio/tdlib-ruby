module TD::Types
  # Contains information about a Telegram Passport element that was requested by a service.
  #
  # @attr type [TD::Types::PassportElementType] Type of the element.
  # @attr is_selfie_required [Boolean] True, if a selfie is required with the identity document.
  # @attr is_translation_required [Boolean] True, if a certified English translation is required with the document.
  # @attr is_native_name_required [Boolean] True, if personal details must include the user's name in the language of
  #   their country of residence.
  class PassportSuitableElement < Base
    attribute :type, TD::Types::PassportElementType
    attribute :is_selfie_required, TD::Types::Bool
    attribute :is_translation_required, TD::Types::Bool
    attribute :is_native_name_required, TD::Types::Bool
  end
end
