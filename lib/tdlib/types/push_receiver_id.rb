module TD::Types
  # Contains a globally unique push receiver identifier, which can be used to identify which account has received a
  #   push notification.
  #
  # @attr id [Integer] The globally unique identifier of push notification subscription.
  class PushReceiverId < Base
    attribute :id, TD::Types::Integer
  end
end
