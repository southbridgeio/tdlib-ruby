module TD::Types
  # Describes a stream to which TDLib internal log is written.
  class LogStream < Base
    %w[
      default
      file
      empty
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/log_stream/#{type}"
    end
  end
end
