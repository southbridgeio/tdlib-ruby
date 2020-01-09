module TD::Types
  # Describes the reason why a chat is reported.
  class ChatReportReason < Base
    %w[
      spam
      violence
      pornography
      child_abuse
      copyright
      unrelated_location
      custom
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_report_reason/#{type}"
    end
  end
end
