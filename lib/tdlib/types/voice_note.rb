module TD::Types
  # Describes a voice note.
  # The voice note must be encoded with the Opus codec, and stored inside an OGG container.
  # Voice notes can have only a single audio channel.
  #
  # @attr duration [Integer] Duration of the voice note, in seconds; as defined by the sender.
  # @attr waveform [String] A waveform representation of the voice note in 5-bit format.
  # @attr mime_type [String] MIME type of the file; as defined by the sender.
  # @attr voice [TD::Types::File] File containing the voice note.
  class VoiceNote < Base
    attribute :duration, TD::Types::Integer
    attribute :waveform, TD::Types::String
    attribute :mime_type, TD::Types::String
    attribute :voice, TD::Types::File
  end
end
