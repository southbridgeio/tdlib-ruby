module TD::Types
  # Contains auto-download settings presets for the user.
  #
  # @attr low [TD::Types::AutoDownloadSettings] Preset with lowest settings; supposed to be used by default when
  #   roaming.
  # @attr medium [TD::Types::AutoDownloadSettings] Preset with medium settings; supposed to be used by default when
  #   using mobile data.
  # @attr high [TD::Types::AutoDownloadSettings] Preset with highest settings; supposed to be used by default when
  #   connected on Wi-Fi.
  class AutoDownloadSettingsPresets < Base
    attribute :low, TD::Types::AutoDownloadSettings
    attribute :medium, TD::Types::AutoDownloadSettings
    attribute :high, TD::Types::AutoDownloadSettings
  end
end
