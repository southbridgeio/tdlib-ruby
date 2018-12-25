module TD::Types
  # The is_all_history_available setting of a supergroup was toggled.
  #
  # @attr is_all_history_available [Boolean] New value of is_all_history_available.
  class ChatEventAction::IsAllHistoryAvailableToggled < ChatEventAction
    attribute :is_all_history_available, TD::Types::Bool
  end
end
