module TD::Types
  # An object of this type can be returned on every function call, in case of an error.
  #
  # @attr code [Integer] Error code; subject to future changes.
  #   If the error code is 406, the error message must not be processed in any way and must not be displayed to the
  #   user.
  # @attr message [String] Error message; subject to future changes.
  class Error < Base
    attribute :code, TD::Types::Integer
    attribute :message, TD::Types::String
  end
end
