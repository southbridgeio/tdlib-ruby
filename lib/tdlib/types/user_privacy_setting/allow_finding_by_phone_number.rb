module TD::Types
  # A privacy setting for managing whether the user can be found by their phone number.
  # Checked only if the phone number is not known to the other user.
  # Can be set only to "Allow contacts" or "Allow all".
  class UserPrivacySetting::AllowFindingByPhoneNumber < UserPrivacySetting
  end
end
