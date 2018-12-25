module TD::Types
  # Contains information about the availability of the "Report spam" action for a chat.
  #
  # @attr can_report_spam [Boolean] True, if a prompt with the "Report spam" action should be shown to the user.
  class ChatReportSpamState < Base
    attribute :can_report_spam, TD::Types::Bool
  end
end
