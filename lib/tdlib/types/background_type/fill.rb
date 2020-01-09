module TD::Types
  # A filled background.
  #
  # @attr fill [TD::Types::BackgroundFill] Description of the background fill.
  class BackgroundType::Fill < BackgroundType
    attribute :fill, TD::Types::BackgroundFill
  end
end
