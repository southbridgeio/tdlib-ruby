module TD::Types
  # A voice note message.
  #
  # @attr voice_note [TD::Types::InputFile] Voice note to be sent.
  # @attr duration [Integer] Duration of the voice note, in seconds.
  # @attr waveform [String] Waveform representation of the voice note, in 5-bit format.
  # @attr caption [TD::Types::FormattedText] Voice note caption; 0-GetOption("message_caption_length_max") characters.
  class InputMessageContent::VoiceNote < InputMessageContent
    attribute :voice_note, TD::Types::InputFile
    attribute :duration, TD::Types::Integer
    attribute :waveform, TD::Types::String
    attribute :caption, TD::Types::FormattedText
  end
end
