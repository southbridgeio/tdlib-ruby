require 'fiddle/import'
require 'json'

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
    update.null? ? nil : JSON.parse(update.to_s)
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
    extend Fiddle::Importer

    module_function

    def method_missing(method_name, *args)
      dlload(find_lib)

      extern 'void* td_json_client_create()'
      extern 'void* td_json_client_send(void*, char*)'
      extern 'char* td_json_client_receive(void*, double)'
      extern 'char* td_json_client_execute(void*, char*)'
      extern 'void td_set_log_verbosity_level(int)'
      extern 'void td_json_client_destroy(void*)'
      extern 'void td_set_log_file_path(char*)'

      undef method_missing
      public_send(method_name, *args)
    end

    def find_lib
      file_name = "libtdjson.#{lib_extension}"
      lib_path =
        if TD.config.lib_path
          TD.config.lib_path
        elsif defined?(Rails) && File.exist?(Rails.root.join('vendor', file_name))
          Rails.root.join('vendor')
        elsif os == :linux
          return `ldconfig -p | grep libtdjson`[/=> (.*?)\n/m, 1]
        end
      raise TD::MissingLibPathError unless lib_path
      File.join(lib_path, file_name)
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

  private_constant :Dl
end
