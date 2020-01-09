module TD::Types
  # Contains information about a chat administrator.
  #
  # @attr user_id [Integer] User identifier of the administrator.
  # @attr custom_title [String] Custom title of the administrator.
  # @attr is_owner [Boolean] True, if the user is the owner of the chat.
  class ChatAdministrator < Base
    attribute :user_id, TD::Types::Integer
    attribute :custom_title, TD::Types::String
    attribute :is_owner, TD::Types::Bool
  end
end
