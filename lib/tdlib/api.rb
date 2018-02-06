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
      raise TD::MissingLibPathError unless TD.config.lib_path

      dlload TD.config.lib_path

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
  end

  private_constant :Dl
end
