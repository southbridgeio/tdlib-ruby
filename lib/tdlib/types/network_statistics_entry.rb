module TD::Types
  # Contains statistics about network usage.
  class NetworkStatisticsEntry < Base
    %w[
      file
      call
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/network_statistics_entry/#{type}"
    end
  end
end
