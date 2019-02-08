module TD::Types
  # Contains information about the period of inactivity after which the current user's account will automatically be
  #   deleted.
  #
  # @attr days [Integer] Number of days of inactivity before the account will be flagged for deletion; should range
  #   from 30-366 days.
  class AccountTtl < Base
    attribute :days, TD::Types::Integer
  end
end
