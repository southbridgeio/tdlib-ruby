module TD::Types
  # Represents the relationship between user A and user B.
  # For incoming_link, user A is the current user; for outgoing_link, user B is the current user.
  class LinkState < Base
    %w[
      none
      knows_phone_number
      is_contact
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/link_state/#{type}"
    end
  end
end
