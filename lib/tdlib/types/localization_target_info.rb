module TD::Types
  # Contains information about the current localization target.
  #
  # @attr language_packs [Array<TD::Types::LanguagePackInfo>] List of available language packs for this application.
  class LocalizationTargetInfo < Base
    attribute :language_packs, TD::Types::Array.of(TD::Types::LanguagePackInfo)
  end
end
