module TD::Types
  # Represents a list of chat administrators.
  #
  # @attr administrators [Array<TD::Types::ChatAdministrator>] A list of chat administrators.
  class ChatAdministrators < Base
    attribute :administrators, TD::Types::Array.of(TD::Types::ChatAdministrator)
  end
end
