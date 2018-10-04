module TD::Types
  # New call was created or information about a call was updated.
  #
  # @attr call [TD::Types::Call] New data about a call.
  class Update::Call < Update
    attribute :call, TD::Types::Call
  end
end
