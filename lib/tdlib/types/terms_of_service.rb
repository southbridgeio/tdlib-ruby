module TD::Types
  # Contains Telegram terms of service.
  #
  # @attr text [TD::Types::FormattedText] Text of the terms of service.
  # @attr min_user_age [Integer] The minimum age of a user to be able to accept the terms; 0 if any.
  # @attr show_popup [Boolean] True, if a blocking popup with terms of service must be shown to the user.
  class TermsOfService < Base
    attribute :text, TD::Types::FormattedText
    attribute :min_user_age, TD::Types::Integer
    attribute :show_popup, TD::Types::Bool
  end
end
