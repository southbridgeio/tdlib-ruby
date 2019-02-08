module TD::Types
  # A custom reason provided by the user.
  #
  # @attr text [String] Report text.
  class ChatReportReason::Custom < ChatReportReason
    attribute :text, TD::Types::String
  end
end
