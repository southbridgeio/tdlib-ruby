module TD::Types
  # Contains information about a tg:// deep link.
  #
  # @attr text [TD::Types::FormattedText] Text to be shown to the user.
  # @attr need_update_application [Boolean] True, if user should be asked to update the application.
  class DeepLinkInfo < Base
    attribute :text, TD::Types::FormattedText
    attribute :need_update_application, TD::Types::Bool
  end
end
