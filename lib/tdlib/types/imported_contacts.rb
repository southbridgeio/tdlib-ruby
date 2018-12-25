module TD::Types
  # Represents the result of an ImportContacts request.
  #
  # @attr user_ids [Array<Integer>] User identifiers of the imported contacts in the same order as they were specified
  #   in the request; 0 if the contact is not yet a registered user.
  # @attr importer_count [Array<Integer>] The number of users that imported the corresponding contact; 0 for already
  #   registered users or if unavailable.
  class ImportedContacts < Base
    attribute :user_ids, TD::Types::Array.of(TD::Types::Integer)
    attribute :importer_count, TD::Types::Array.of(TD::Types::Integer)
  end
end
