require 'json'
require 'ffi'

module TD::Api
  module_function

  def client_create
    Dl.td_json_client_create
  end

  def client_send(client, params)
    Dl.td_json_client_send(client, params.to_json)
  end

  def client_execute(client, params)
    Dl.td_json_client_execute(client, params.to_json)
  end

  def client_receive(client, timeout)
    update = Dl.td_json_client_receive(client, timeout)
    JSON.parse(update) if update
  end

  def client_destroy(client)
    Dl.td_json_client_destroy(client)
  end

  def set_log_verbosity_level(level)
    Dl.td_set_log_verbosity_level(level)
  end

  def set_log_file_path(path)
    Dl.td_set_log_file_path(path)
  end

  module Dl
    extend FFI::Library

    @mutex = Mutex.new

    module_function

    def method_missing(method_name, *args)
      @mutex.synchronize do
        return public_send(method_name, *args) if respond_to?(method_name)

        find_lib

        attach_function :td_json_client_create, [], :pointer
        attach_function :td_json_client_receive, [:pointer, :double], :string, blocking: true
        attach_function :td_json_client_send, [:pointer, :string], :pointer, blocking: true
        attach_function :td_json_client_execute, [:pointer, :string], :string, blocking: true
        attach_function :td_json_client_destroy, [:pointer], :void
        attach_function :td_set_log_file_path, [:string], :int
        attach_function :td_set_log_max_file_size, [:long_long], :void
        attach_function :td_set_log_verbosity_level, [:int], :void

        undef method_missing
        public_send(method_name, *args)
      end
    end

    def find_lib
      file_name = "libtdjson.#{lib_extension}"
      lib_path =
        if TD.config.lib_path
          TD.config.lib_path
        elsif defined?(Rails) && File.exist?(Rails.root.join('vendor', file_name))
          Rails.root.join('vendor')
        end
      full_path = File.join(lib_path.to_s, file_name)
      ffi_lib full_path
      full_path
    rescue LoadError
      ffi_lib 'tdjson'
      ffi_libraries.first.name
    end

    def lib_extension
      case os
      when :windows then 'dll'
      when :macos then 'dylib'
      when :linux then 'so'
      else raise "#{os} OS is not supported"
      end
    end

    def os
      host_os = RbConfig::CONFIG['host_os']
      case host_os
      when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
        :windows
      when /darwin|mac os/
        :macos
      when /linux/
        :linux
      when /solaris|bsd/
        :unix
      else
        raise "Unknown os: #{host_os.inspect}"
      end
    end
  end
end
