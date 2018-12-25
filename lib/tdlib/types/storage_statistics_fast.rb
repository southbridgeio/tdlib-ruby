module TD::Types
  # Contains approximate storage usage statistics, excluding files of unknown file type.
  #
  # @attr files_size [Integer] Approximate total size of files.
  # @attr file_count [Integer] Approximate number of files.
  # @attr database_size [Integer] Size of the database.
  class StorageStatisticsFast < Base
    attribute :files_size, TD::Types::Integer
    attribute :file_count, TD::Types::Integer
    attribute :database_size, TD::Types::Integer
  end
end
