module TD::Types
  # Contains information about an encrypted Telegram Passport element; for bots only.
  #
  # @attr type [TD::Types::PassportElementType] Type of Telegram Passport element.
  # @attr data [String] Encrypted JSON-encoded data about the user.
  # @attr front_side [TD::Types::DatedFile] The front side of an identity document.
  # @attr reverse_side [TD::Types::DatedFile, nil] The reverse side of an identity document; may be null.
  # @attr selfie [TD::Types::DatedFile, nil] Selfie with the document; may be null.
  # @attr translation [Array<TD::Types::DatedFile>] List of files containing a certified English translation of the
  #   document.
  # @attr files [Array<TD::Types::DatedFile>] List of attached files.
  # @attr value [String] Unencrypted data, phone number or email address.
  # @attr hash [String] Hash of the entire element.
  class EncryptedPassportElement < Base
    attribute :type, TD::Types::PassportElementType
    attribute :data, TD::Types::String
    attribute :front_side, TD::Types::DatedFile
    attribute :reverse_side, TD::Types::DatedFile.optional.default(nil)
    attribute :selfie, TD::Types::DatedFile.optional.default(nil)
    attribute :translation, TD::Types::Array.of(TD::Types::DatedFile)
    attribute :files, TD::Types::Array.of(TD::Types::DatedFile)
    attribute :value, TD::Types::String
    attribute :hash, TD::Types::String
  end
end
