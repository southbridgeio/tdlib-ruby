module TD::Types
  # Contains a public HTTPS link to a message in a supergroup or channel with a username.
  #
  # @attr link [String] Message link.
  # @attr html [String] HTML-code for embedding the message.
  class PublicMessageLink < Base
    attribute :link, TD::Types::String
    attribute :html, TD::Types::String
  end
end
