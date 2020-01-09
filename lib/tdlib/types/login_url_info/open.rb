module TD::Types
  # An HTTP url needs to be open.
  #
  # @attr url [String] The URL to open.
  # @attr skip_confirm [Boolean] True, if there is no need to show an ordinary open URL confirm.
  class LoginUrlInfo::Open < LoginUrlInfo
    attribute :url, TD::Types::String
    attribute :skip_confirm, TD::Types::Bool
  end
end
