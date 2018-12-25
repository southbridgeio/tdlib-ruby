module TD::Types
  # Contains information about saved card credentials.
  #
  # @attr id [String] Unique identifier of the saved credentials.
  # @attr title [String] Title of the saved credentials.
  class SavedCredentials < Base
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
  end
end
