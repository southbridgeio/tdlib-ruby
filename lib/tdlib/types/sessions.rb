module TD::Types
  # Contains a list of sessions.
  #
  # @attr sessions [Array<TD::Types::Session>] List of sessions.
  class Sessions < Base
    attribute :sessions, TD::Types::Array.of(TD::Types::Session)
  end
end
