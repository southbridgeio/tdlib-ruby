module TD::Types
  # Represents the type of a network.
  class NetworkType < Base
    %w[
      none
      mobile
      mobile_roaming
      wi_fi
      other
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/network_type/#{type}"
    end
  end
end
