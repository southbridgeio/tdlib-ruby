module TD::Types
  # The call has ended successfully.
  #
  # @attr reason [TD::Types::CallDiscardReason] The reason, why the call has ended.
  # @attr need_rating [Boolean] True, if the call rating should be sent to the server.
  # @attr need_debug_information [Boolean] True, if the call debug information should be sent to the server.
  class CallState::Discarded < CallState
    attribute :reason, TD::Types::CallDiscardReason
    attribute :need_rating, TD::Types::Bool
    attribute :need_debug_information, TD::Types::Bool
  end
end
