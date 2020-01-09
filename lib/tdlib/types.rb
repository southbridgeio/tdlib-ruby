require 'dry-struct'
require 'dry-types'

module TD::Types
  include Dry::Types.module
  
  LOOKUP_TABLE = {
      'error'                                           => 'Error',
      'ok'                                              => 'Ok',
      'tdlibParameters'                                 => 'TdlibParameters',
      'AuthenticationCodeType'                          => 'AuthenticationCodeType',
      'authenticationCodeTypeTelegramMessage'           => 'AuthenticationCodeType::TelegramMessage',
      'authenticationCodeTypeSms'                       => 'AuthenticationCodeType::Sms',
      'authenticationCodeTypeCall'                      => 'AuthenticationCodeType::Call',
      'authenticationCodeTypeFlashCall'                 => 'AuthenticationCodeType::FlashCall',
      'authenticationCodeInfo'                          => 'AuthenticationCodeInfo',
      'emailAddressAuthenticationCodeInfo'              => 'EmailAddressAuthenticationCodeInfo',
      'textEntity'                                      => 'TextEntity',
      'textEntities'                                    => 'TextEntities',
      'formattedText'                                   => 'FormattedText',
      'termsOfService'                                  => 'TermsOfService',
      'AuthorizationState'                              => 'AuthorizationState',
      'authorizationStateWaitTdlibParameters'           => 'AuthorizationState::WaitTdlibParameters',
      'authorizationStateWaitEncryptionKey'             => 'AuthorizationState::WaitEncryptionKey',
      'authorizationStateWaitPhoneNumber'               => 'AuthorizationState::WaitPhoneNumber',
      'authorizationStateWaitCode'                      => 'AuthorizationState::WaitCode',
      'authorizationStateWaitOtherDeviceConfirmation'   => 'AuthorizationState::WaitOtherDeviceConfirmation',
      'authorizationStateWaitRegistration'              => 'AuthorizationState::WaitRegistration',
      'authorizationStateWaitPassword'                  => 'AuthorizationState::WaitPassword',
      'authorizationStateReady'                         => 'AuthorizationState::Ready',
      'authorizationStateLoggingOut'                    => 'AuthorizationState::LoggingOut',
      'authorizationStateClosing'                       => 'AuthorizationState::Closing',
      'authorizationStateClosed'                        => 'AuthorizationState::Closed',
      'passwordState'                                   => 'PasswordState',
      'recoveryEmailAddress'                            => 'RecoveryEmailAddress',
      'temporaryPasswordState'                          => 'TemporaryPasswordState',
      'localFile'                                       => 'LocalFile',
      'remoteFile'                                      => 'RemoteFile',
      'file'                                            => 'File',
      'InputFile'                                       => 'InputFile',
      'inputFileId'                                     => 'InputFile::Id',
      'inputFileRemote'                                 => 'InputFile::Remote',
      'inputFileLocal'                                  => 'InputFile::Local',
      'inputFileGenerated'                              => 'InputFile::Generated',
      'photoSize'                                       => 'PhotoSize',
      'minithumbnail'                                   => 'Minithumbnail',
      'MaskPoint'                                       => 'MaskPoint',
      'maskPointForehead'                               => 'MaskPoint::Forehead',
      'maskPointEyes'                                   => 'MaskPoint::Eyes',
      'maskPointMouth'                                  => 'MaskPoint::Mouth',
      'maskPointChin'                                   => 'MaskPoint::Chin',
      'maskPosition'                                    => 'MaskPosition',
      'pollOption'                                      => 'PollOption',
      'animation'                                       => 'Animation',
      'audio'                                           => 'Audio',
      'document'                                        => 'Document',
      'photo'                                           => 'Photo',
      'sticker'                                         => 'Sticker',
      'video'                                           => 'Video',
      'videoNote'                                       => 'VideoNote',
      'voiceNote'                                       => 'VoiceNote',
      'contact'                                         => 'Contact',
      'location'                                        => 'Location',
      'venue'                                           => 'Venue',
      'game'                                            => 'Game',
      'poll'                                            => 'Poll',
      'profilePhoto'                                    => 'ProfilePhoto',
      'chatPhoto'                                       => 'ChatPhoto',
      'UserType'                                        => 'UserType',
      'userTypeRegular'                                 => 'UserType::Regular',
      'userTypeDeleted'                                 => 'UserType::Deleted',
      'userTypeBot'                                     => 'UserType::Bot',
      'userTypeUnknown'                                 => 'UserType::Unknown',
      'botCommand'                                      => 'BotCommand',
      'botInfo'                                         => 'BotInfo',
      'chatLocation'                                    => 'ChatLocation',
      'user'                                            => 'User',
      'userFullInfo'                                    => 'UserFullInfo',
      'userProfilePhoto'                                => 'UserProfilePhoto',
      'userProfilePhotos'                               => 'UserProfilePhotos',
      'users'                                           => 'Users',
      'chatAdministrator'                               => 'ChatAdministrator',
      'chatAdministrators'                              => 'ChatAdministrators',
      'chatPermissions'                                 => 'ChatPermissions',
      'ChatMemberStatus'                                => 'ChatMemberStatus',
      'chatMemberStatusCreator'                         => 'ChatMemberStatus::Creator',
      'chatMemberStatusAdministrator'                   => 'ChatMemberStatus::Administrator',
      'chatMemberStatusMember'                          => 'ChatMemberStatus::Member',
      'chatMemberStatusRestricted'                      => 'ChatMemberStatus::Restricted',
      'chatMemberStatusLeft'                            => 'ChatMemberStatus::Left',
      'chatMemberStatusBanned'                          => 'ChatMemberStatus::Banned',
      'chatMember'                                      => 'ChatMember',
      'chatMembers'                                     => 'ChatMembers',
      'ChatMembersFilter'                               => 'ChatMembersFilter',
      'chatMembersFilterContacts'                       => 'ChatMembersFilter::Contacts',
      'chatMembersFilterAdministrators'                 => 'ChatMembersFilter::Administrators',
      'chatMembersFilterMembers'                        => 'ChatMembersFilter::Members',
      'chatMembersFilterRestricted'                     => 'ChatMembersFilter::Restricted',
      'chatMembersFilterBanned'                         => 'ChatMembersFilter::Banned',
      'chatMembersFilterBots'                           => 'ChatMembersFilter::Bots',
      'SupergroupMembersFilter'                         => 'SupergroupMembersFilter',
      'supergroupMembersFilterRecent'                   => 'SupergroupMembersFilter::Recent',
      'supergroupMembersFilterContacts'                 => 'SupergroupMembersFilter::Contacts',
      'supergroupMembersFilterAdministrators'           => 'SupergroupMembersFilter::Administrators',
      'supergroupMembersFilterSearch'                   => 'SupergroupMembersFilter::Search',
      'supergroupMembersFilterRestricted'               => 'SupergroupMembersFilter::Restricted',
      'supergroupMembersFilterBanned'                   => 'SupergroupMembersFilter::Banned',
      'supergroupMembersFilterBots'                     => 'SupergroupMembersFilter::Bots',
      'basicGroup'                                      => 'BasicGroup',
      'basicGroupFullInfo'                              => 'BasicGroupFullInfo',
      'supergroup'                                      => 'Supergroup',
      'supergroupFullInfo'                              => 'SupergroupFullInfo',
      'SecretChatState'                                 => 'SecretChatState',
      'secretChatStatePending'                          => 'SecretChatState::Pending',
      'secretChatStateReady'                            => 'SecretChatState::Ready',
      'secretChatStateClosed'                           => 'SecretChatState::Closed',
      'secretChat'                                      => 'SecretChat',
      'MessageForwardOrigin'                            => 'MessageForwardOrigin',
      'messageForwardOriginUser'                        => 'MessageForwardOrigin::User',
      'messageForwardOriginHiddenUser'                  => 'MessageForwardOrigin::HiddenUser',
      'messageForwardOriginChannel'                     => 'MessageForwardOrigin::Channel',
      'messageForwardInfo'                              => 'MessageForwardInfo',
      'MessageSendingState'                             => 'MessageSendingState',
      'messageSendingStatePending'                      => 'MessageSendingState::Pending',
      'messageSendingStateFailed'                       => 'MessageSendingState::Failed',
      'message'                                         => 'Message',
      'messages'                                        => 'Messages',
      'foundMessages'                                   => 'FoundMessages',
      'NotificationSettingsScope'                       => 'NotificationSettingsScope',
      'notificationSettingsScopePrivateChats'           => 'NotificationSettingsScope::PrivateChats',
      'notificationSettingsScopeGroupChats'             => 'NotificationSettingsScope::GroupChats',
      'notificationSettingsScopeChannelChats'           => 'NotificationSettingsScope::ChannelChats',
      'chatNotificationSettings'                        => 'ChatNotificationSettings',
      'scopeNotificationSettings'                       => 'ScopeNotificationSettings',
      'draftMessage'                                    => 'DraftMessage',
      'ChatType'                                        => 'ChatType',
      'chatTypePrivate'                                 => 'ChatType::Private',
      'chatTypeBasicGroup'                              => 'ChatType::BasicGroup',
      'chatTypeSupergroup'                              => 'ChatType::Supergroup',
      'chatTypeSecret'                                  => 'ChatType::Secret',
      'ChatList'                                        => 'ChatList',
      'chatListMain'                                    => 'ChatList::Main',
      'chatListArchive'                                 => 'ChatList::Archive',
      'chat'                                            => 'Chat',
      'chats'                                           => 'Chats',
      'chatNearby'                                      => 'ChatNearby',
      'chatsNearby'                                     => 'ChatsNearby',
      'chatInviteLink'                                  => 'ChatInviteLink',
      'chatInviteLinkInfo'                              => 'ChatInviteLinkInfo',
      'PublicChatType'                                  => 'PublicChatType',
      'publicChatTypeHasUsername'                       => 'PublicChatType::HasUsername',
      'publicChatTypeIsLocationBased'                   => 'PublicChatType::IsLocationBased',
      'ChatActionBar'                                   => 'ChatActionBar',
      'chatActionBarReportSpam'                         => 'ChatActionBar::ReportSpam',
      'chatActionBarReportUnrelatedLocation'            => 'ChatActionBar::ReportUnrelatedLocation',
      'chatActionBarReportAddBlock'                     => 'ChatActionBar::ReportAddBlock',
      'chatActionBarAddContact'                         => 'ChatActionBar::AddContact',
      'chatActionBarSharePhoneNumber'                   => 'ChatActionBar::SharePhoneNumber',
      'KeyboardButtonType'                              => 'KeyboardButtonType',
      'keyboardButtonTypeText'                          => 'KeyboardButtonType::Text',
      'keyboardButtonTypeRequestPhoneNumber'            => 'KeyboardButtonType::RequestPhoneNumber',
      'keyboardButtonTypeRequestLocation'               => 'KeyboardButtonType::RequestLocation',
      'keyboardButton'                                  => 'KeyboardButton',
      'InlineKeyboardButtonType'                        => 'InlineKeyboardButtonType',
      'inlineKeyboardButtonTypeUrl'                     => 'InlineKeyboardButtonType::Url',
      'inlineKeyboardButtonTypeLoginUrl'                => 'InlineKeyboardButtonType::LoginUrl',
      'inlineKeyboardButtonTypeCallback'                => 'InlineKeyboardButtonType::Callback',
      'inlineKeyboardButtonTypeCallbackGame'            => 'InlineKeyboardButtonType::CallbackGame',
      'inlineKeyboardButtonTypeSwitchInline'            => 'InlineKeyboardButtonType::SwitchInline',
      'inlineKeyboardButtonTypeBuy'                     => 'InlineKeyboardButtonType::Buy',
      'inlineKeyboardButton'                            => 'InlineKeyboardButton',
      'ReplyMarkup'                                     => 'ReplyMarkup',
      'replyMarkupRemoveKeyboard'                       => 'ReplyMarkup::RemoveKeyboard',
      'replyMarkupForceReply'                           => 'ReplyMarkup::ForceReply',
      'replyMarkupShowKeyboard'                         => 'ReplyMarkup::ShowKeyboard',
      'replyMarkupInlineKeyboard'                       => 'ReplyMarkup::InlineKeyboard',
      'LoginUrlInfo'                                    => 'LoginUrlInfo',
      'loginUrlInfoOpen'                                => 'LoginUrlInfo::Open',
      'loginUrlInfoRequestConfirmation'                 => 'LoginUrlInfo::RequestConfirmation',
      'RichText'                                        => 'RichText',
      'richTextPlain'                                   => 'RichText::Plain',
      'richTextBold'                                    => 'RichText::Bold',
      'richTextItalic'                                  => 'RichText::Italic',
      'richTextUnderline'                               => 'RichText::Underline',
      'richTextStrikethrough'                           => 'RichText::Strikethrough',
      'richTextFixed'                                   => 'RichText::Fixed',
      'richTextUrl'                                     => 'RichText::Url',
      'richTextEmailAddress'                            => 'RichText::EmailAddress',
      'richTextSubscript'                               => 'RichText::Subscript',
      'richTextSuperscript'                             => 'RichText::Superscript',
      'richTextMarked'                                  => 'RichText::Marked',
      'richTextPhoneNumber'                             => 'RichText::PhoneNumber',
      'richTextIcon'                                    => 'RichText::Icon',
      'richTextAnchor'                                  => 'RichText::Anchor',
      'richTexts'                                       => 'RichText::s',
      'pageBlockCaption'                                => 'PageBlockCaption',
      'pageBlockListItem'                               => 'PageBlockListItem',
      'PageBlockHorizontalAlignment'                    => 'PageBlockHorizontalAlignment',
      'pageBlockHorizontalAlignmentLeft'                => 'PageBlockHorizontalAlignment::Left',
      'pageBlockHorizontalAlignmentCenter'              => 'PageBlockHorizontalAlignment::Center',
      'pageBlockHorizontalAlignmentRight'               => 'PageBlockHorizontalAlignment::Right',
      'PageBlockVerticalAlignment'                      => 'PageBlockVerticalAlignment',
      'pageBlockVerticalAlignmentTop'                   => 'PageBlockVerticalAlignment::Top',
      'pageBlockVerticalAlignmentMiddle'                => 'PageBlockVerticalAlignment::Middle',
      'pageBlockVerticalAlignmentBottom'                => 'PageBlockVerticalAlignment::Bottom',
      'pageBlockTableCell'                              => 'PageBlockTableCell',
      'pageBlockRelatedArticle'                         => 'PageBlockRelatedArticle',
      'PageBlock'                                       => 'PageBlock',
      'pageBlockTitle'                                  => 'PageBlock::Title',
      'pageBlockSubtitle'                               => 'PageBlock::Subtitle',
      'pageBlockAuthorDate'                             => 'PageBlock::AuthorDate',
      'pageBlockHeader'                                 => 'PageBlock::Header',
      'pageBlockSubheader'                              => 'PageBlock::Subheader',
      'pageBlockKicker'                                 => 'PageBlock::Kicker',
      'pageBlockParagraph'                              => 'PageBlock::Paragraph',
      'pageBlockPreformatted'                           => 'PageBlock::Preformatted',
      'pageBlockFooter'                                 => 'PageBlock::Footer',
      'pageBlockDivider'                                => 'PageBlock::Divider',
      'pageBlockAnchor'                                 => 'PageBlock::Anchor',
      'pageBlockList'                                   => 'PageBlock::List',
      'pageBlockBlockQuote'                             => 'PageBlock::BlockQuote',
      'pageBlockPullQuote'                              => 'PageBlock::PullQuote',
      'pageBlockAnimation'                              => 'PageBlock::Animation',
      'pageBlockAudio'                                  => 'PageBlock::Audio',
      'pageBlockPhoto'                                  => 'PageBlock::Photo',
      'pageBlockVideo'                                  => 'PageBlock::Video',
      'pageBlockVoiceNote'                              => 'PageBlock::VoiceNote',
      'pageBlockCover'                                  => 'PageBlock::Cover',
      'pageBlockEmbedded'                               => 'PageBlock::Embedded',
      'pageBlockEmbeddedPost'                           => 'PageBlock::EmbeddedPost',
      'pageBlockCollage'                                => 'PageBlock::Collage',
      'pageBlockSlideshow'                              => 'PageBlock::Slideshow',
      'pageBlockChatLink'                               => 'PageBlock::ChatLink',
      'pageBlockTable'                                  => 'PageBlock::Table',
      'pageBlockDetails'                                => 'PageBlock::Details',
      'pageBlockRelatedArticles'                        => 'PageBlock::RelatedArticles',
      'pageBlockMap'                                    => 'PageBlock::Map',
      'webPageInstantView'                              => 'WebPageInstantView',
      'webPage'                                         => 'WebPage',
      'address'                                         => 'Address',
      'labeledPricePart'                                => 'LabeledPricePart',
      'invoice'                                         => 'Invoice',
      'orderInfo'                                       => 'OrderInfo',
      'shippingOption'                                  => 'ShippingOption',
      'savedCredentials'                                => 'SavedCredentials',
      'InputCredentials'                                => 'InputCredentials',
      'inputCredentialsSaved'                           => 'InputCredentials::Saved',
      'inputCredentialsNew'                             => 'InputCredentials::New',
      'inputCredentialsAndroidPay'                      => 'InputCredentials::AndroidPay',
      'inputCredentialsApplePay'                        => 'InputCredentials::ApplePay',
      'paymentsProviderStripe'                          => 'PaymentsProviderStripe',
      'paymentForm'                                     => 'PaymentForm',
      'validatedOrderInfo'                              => 'ValidatedOrderInfo',
      'paymentResult'                                   => 'PaymentResult',
      'paymentReceipt'                                  => 'PaymentReceipt',
      'datedFile'                                       => 'DatedFile',
      'PassportElementType'                             => 'PassportElementType',
      'passportElementTypePersonalDetails'              => 'PassportElementType::PersonalDetails',
      'passportElementTypePassport'                     => 'PassportElementType::Passport',
      'passportElementTypeDriverLicense'                => 'PassportElementType::DriverLicense',
      'passportElementTypeIdentityCard'                 => 'PassportElementType::IdentityCard',
      'passportElementTypeInternalPassport'             => 'PassportElementType::InternalPassport',
      'passportElementTypeAddress'                      => 'PassportElementType::Address',
      'passportElementTypeUtilityBill'                  => 'PassportElementType::UtilityBill',
      'passportElementTypeBankStatement'                => 'PassportElementType::BankStatement',
      'passportElementTypeRentalAgreement'              => 'PassportElementType::RentalAgreement',
      'passportElementTypePassportRegistration'         => 'PassportElementType::PassportRegistration',
      'passportElementTypeTemporaryRegistration'        => 'PassportElementType::TemporaryRegistration',
      'passportElementTypePhoneNumber'                  => 'PassportElementType::PhoneNumber',
      'passportElementTypeEmailAddress'                 => 'PassportElementType::EmailAddress',
      'date'                                            => 'Date',
      'personalDetails'                                 => 'PersonalDetails',
      'identityDocument'                                => 'IdentityDocument',
      'inputIdentityDocument'                           => 'InputIdentityDocument',
      'personalDocument'                                => 'PersonalDocument',
      'inputPersonalDocument'                           => 'InputPersonalDocument',
      'PassportElement'                                 => 'PassportElement',
      'passportElementPersonalDetails'                  => 'PassportElement::PersonalDetails',
      'passportElementPassport'                         => 'PassportElement::Passport',
      'passportElementDriverLicense'                    => 'PassportElement::DriverLicense',
      'passportElementIdentityCard'                     => 'PassportElement::IdentityCard',
      'passportElementInternalPassport'                 => 'PassportElement::InternalPassport',
      'passportElementAddress'                          => 'PassportElement::Address',
      'passportElementUtilityBill'                      => 'PassportElement::UtilityBill',
      'passportElementBankStatement'                    => 'PassportElement::BankStatement',
      'passportElementRentalAgreement'                  => 'PassportElement::RentalAgreement',
      'passportElementPassportRegistration'             => 'PassportElement::PassportRegistration',
      'passportElementTemporaryRegistration'            => 'PassportElement::TemporaryRegistration',
      'passportElementPhoneNumber'                      => 'PassportElement::PhoneNumber',
      'passportElementEmailAddress'                     => 'PassportElement::EmailAddress',
      'InputPassportElement'                            => 'InputPassportElement',
      'inputPassportElementPersonalDetails'             => 'InputPassportElement::PersonalDetails',
      'inputPassportElementPassport'                    => 'InputPassportElement::Passport',
      'inputPassportElementDriverLicense'               => 'InputPassportElement::DriverLicense',
      'inputPassportElementIdentityCard'                => 'InputPassportElement::IdentityCard',
      'inputPassportElementInternalPassport'            => 'InputPassportElement::InternalPassport',
      'inputPassportElementAddress'                     => 'InputPassportElement::Address',
      'inputPassportElementUtilityBill'                 => 'InputPassportElement::UtilityBill',
      'inputPassportElementBankStatement'               => 'InputPassportElement::BankStatement',
      'inputPassportElementRentalAgreement'             => 'InputPassportElement::RentalAgreement',
      'inputPassportElementPassportRegistration'        => 'InputPassportElement::PassportRegistration',
      'inputPassportElementTemporaryRegistration'       => 'InputPassportElement::TemporaryRegistration',
      'inputPassportElementPhoneNumber'                 => 'InputPassportElement::PhoneNumber',
      'inputPassportElementEmailAddress'                => 'InputPassportElement::EmailAddress',
      'passportElements'                                => 'PassportElements',
      'PassportElementErrorSource'                      => 'PassportElementErrorSource',
      'passportElementErrorSourceUnspecified'           => 'PassportElementErrorSource::Unspecified',
      'passportElementErrorSourceDataField'             => 'PassportElementErrorSource::DataField',
      'passportElementErrorSourceFrontSide'             => 'PassportElementErrorSource::FrontSide',
      'passportElementErrorSourceReverseSide'           => 'PassportElementErrorSource::ReverseSide',
      'passportElementErrorSourceSelfie'                => 'PassportElementErrorSource::Selfie',
      'passportElementErrorSourceTranslationFile'       => 'PassportElementErrorSource::TranslationFile',
      'passportElementErrorSourceTranslationFiles'      => 'PassportElementErrorSource::TranslationFiles',
      'passportElementErrorSourceFile'                  => 'PassportElementErrorSource::File',
      'passportElementErrorSourceFiles'                 => 'PassportElementErrorSource::Files',
      'passportElementError'                            => 'PassportElementError',
      'passportSuitableElement'                         => 'PassportSuitableElement',
      'passportRequiredElement'                         => 'PassportRequiredElement',
      'passportAuthorizationForm'                       => 'PassportAuthorizationForm',
      'passportElementsWithErrors'                      => 'PassportElementsWithErrors',
      'encryptedCredentials'                            => 'EncryptedCredentials',
      'encryptedPassportElement'                        => 'EncryptedPassportElement',
      'InputPassportElementErrorSource'                 => 'InputPassportElementErrorSource',
      'inputPassportElementErrorSourceUnspecified'      => 'InputPassportElementErrorSource::Unspecified',
      'inputPassportElementErrorSourceDataField'        => 'InputPassportElementErrorSource::DataField',
      'inputPassportElementErrorSourceFrontSide'        => 'InputPassportElementErrorSource::FrontSide',
      'inputPassportElementErrorSourceReverseSide'      => 'InputPassportElementErrorSource::ReverseSide',
      'inputPassportElementErrorSourceSelfie'           => 'InputPassportElementErrorSource::Selfie',
      'inputPassportElementErrorSourceTranslationFile'  => 'InputPassportElementErrorSource::TranslationFile',
      'inputPassportElementErrorSourceTranslationFiles' => 'InputPassportElementErrorSource::TranslationFiles',
      'inputPassportElementErrorSourceFile'             => 'InputPassportElementErrorSource::File',
      'inputPassportElementErrorSourceFiles'            => 'InputPassportElementErrorSource::Files',
      'inputPassportElementError'                       => 'InputPassportElementError',
      'MessageContent'                                  => 'MessageContent',
      'messageText'                                     => 'MessageContent::Text',
      'messageAnimation'                                => 'MessageContent::Animation',
      'messageAudio'                                    => 'MessageContent::Audio',
      'messageDocument'                                 => 'MessageContent::Document',
      'messagePhoto'                                    => 'MessageContent::Photo',
      'messageExpiredPhoto'                             => 'MessageContent::ExpiredPhoto',
      'messageSticker'                                  => 'MessageContent::Sticker',
      'messageVideo'                                    => 'MessageContent::Video',
      'messageExpiredVideo'                             => 'MessageContent::ExpiredVideo',
      'messageVideoNote'                                => 'MessageContent::VideoNote',
      'messageVoiceNote'                                => 'MessageContent::VoiceNote',
      'messageLocation'                                 => 'MessageContent::Location',
      'messageVenue'                                    => 'MessageContent::Venue',
      'messageContact'                                  => 'MessageContent::Contact',
      'messageGame'                                     => 'MessageContent::Game',
      'messagePoll'                                     => 'MessageContent::Poll',
      'messageInvoice'                                  => 'MessageContent::Invoice',
      'messageCall'                                     => 'MessageContent::Call',
      'messageBasicGroupChatCreate'                     => 'MessageContent::BasicGroupChatCreate',
      'messageSupergroupChatCreate'                     => 'MessageContent::SupergroupChatCreate',
      'messageChatChangeTitle'                          => 'MessageContent::ChatChangeTitle',
      'messageChatChangePhoto'                          => 'MessageContent::ChatChangePhoto',
      'messageChatDeletePhoto'                          => 'MessageContent::ChatDeletePhoto',
      'messageChatAddMembers'                           => 'MessageContent::ChatAddMembers',
      'messageChatJoinByLink'                           => 'MessageContent::ChatJoinByLink',
      'messageChatDeleteMember'                         => 'MessageContent::ChatDeleteMember',
      'messageChatUpgradeTo'                            => 'MessageContent::ChatUpgradeTo',
      'messageChatUpgradeFrom'                          => 'MessageContent::ChatUpgradeFrom',
      'messagePinMessage'                               => 'MessageContent::PinMessage',
      'messageScreenshotTaken'                          => 'MessageContent::ScreenshotTaken',
      'messageChatSetTtl'                               => 'MessageContent::ChatSetTtl',
      'messageCustomServiceAction'                      => 'MessageContent::CustomServiceAction',
      'messageGameScore'                                => 'MessageContent::GameScore',
      'messagePaymentSuccessful'                        => 'MessageContent::PaymentSuccessful',
      'messagePaymentSuccessfulBot'                     => 'MessageContent::PaymentSuccessfulBot',
      'messageContactRegistered'                        => 'MessageContent::ContactRegistered',
      'messageWebsiteConnected'                         => 'MessageContent::WebsiteConnected',
      'messagePassportDataSent'                         => 'MessageContent::PassportDataSent',
      'messagePassportDataReceived'                     => 'MessageContent::PassportDataReceived',
      'messageUnsupported'                              => 'MessageContent::Unsupported',
      'TextEntityType'                                  => 'TextEntityType',
      'textEntityTypeMention'                           => 'TextEntityType::Mention',
      'textEntityTypeHashtag'                           => 'TextEntityType::Hashtag',
      'textEntityTypeCashtag'                           => 'TextEntityType::Cashtag',
      'textEntityTypeBotCommand'                        => 'TextEntityType::BotCommand',
      'textEntityTypeUrl'                               => 'TextEntityType::Url',
      'textEntityTypeEmailAddress'                      => 'TextEntityType::EmailAddress',
      'textEntityTypePhoneNumber'                       => 'TextEntityType::PhoneNumber',
      'textEntityTypeBold'                              => 'TextEntityType::Bold',
      'textEntityTypeItalic'                            => 'TextEntityType::Italic',
      'textEntityTypeUnderline'                         => 'TextEntityType::Underline',
      'textEntityTypeStrikethrough'                     => 'TextEntityType::Strikethrough',
      'textEntityTypeCode'                              => 'TextEntityType::Code',
      'textEntityTypePre'                               => 'TextEntityType::Pre',
      'textEntityTypePreCode'                           => 'TextEntityType::PreCode',
      'textEntityTypeTextUrl'                           => 'TextEntityType::TextUrl',
      'textEntityTypeMentionName'                       => 'TextEntityType::MentionName',
      'inputThumbnail'                                  => 'InputThumbnail',
      'MessageSchedulingState'                          => 'MessageSchedulingState',
      'messageSchedulingStateSendAtDate'                => 'MessageSchedulingState::SendAtDate',
      'messageSchedulingStateSendWhenOnline'            => 'MessageSchedulingState::SendWhenOnline',
      'sendMessageOptions'                              => 'SendMessageOptions',
      'InputMessageContent'                             => 'InputMessageContent',
      'inputMessageText'                                => 'InputMessageContent::Text',
      'inputMessageAnimation'                           => 'InputMessageContent::Animation',
      'inputMessageAudio'                               => 'InputMessageContent::Audio',
      'inputMessageDocument'                            => 'InputMessageContent::Document',
      'inputMessagePhoto'                               => 'InputMessageContent::Photo',
      'inputMessageSticker'                             => 'InputMessageContent::Sticker',
      'inputMessageVideo'                               => 'InputMessageContent::Video',
      'inputMessageVideoNote'                           => 'InputMessageContent::VideoNote',
      'inputMessageVoiceNote'                           => 'InputMessageContent::VoiceNote',
      'inputMessageLocation'                            => 'InputMessageContent::Location',
      'inputMessageVenue'                               => 'InputMessageContent::Venue',
      'inputMessageContact'                             => 'InputMessageContent::Contact',
      'inputMessageGame'                                => 'InputMessageContent::Game',
      'inputMessageInvoice'                             => 'InputMessageContent::Invoice',
      'inputMessagePoll'                                => 'InputMessageContent::Poll',
      'inputMessageForwarded'                           => 'InputMessageContent::Forwarded',
      'SearchMessagesFilter'                            => 'SearchMessagesFilter',
      'searchMessagesFilterEmpty'                       => 'SearchMessagesFilter::Empty',
      'searchMessagesFilterAnimation'                   => 'SearchMessagesFilter::Animation',
      'searchMessagesFilterAudio'                       => 'SearchMessagesFilter::Audio',
      'searchMessagesFilterDocument'                    => 'SearchMessagesFilter::Document',
      'searchMessagesFilterPhoto'                       => 'SearchMessagesFilter::Photo',
      'searchMessagesFilterVideo'                       => 'SearchMessagesFilter::Video',
      'searchMessagesFilterVoiceNote'                   => 'SearchMessagesFilter::VoiceNote',
      'searchMessagesFilterPhotoAndVideo'               => 'SearchMessagesFilter::PhotoAndVideo',
      'searchMessagesFilterUrl'                         => 'SearchMessagesFilter::Url',
      'searchMessagesFilterChatPhoto'                   => 'SearchMessagesFilter::ChatPhoto',
      'searchMessagesFilterCall'                        => 'SearchMessagesFilter::Call',
      'searchMessagesFilterMissedCall'                  => 'SearchMessagesFilter::MissedCall',
      'searchMessagesFilterVideoNote'                   => 'SearchMessagesFilter::VideoNote',
      'searchMessagesFilterVoiceAndVideoNote'           => 'SearchMessagesFilter::VoiceAndVideoNote',
      'searchMessagesFilterMention'                     => 'SearchMessagesFilter::Mention',
      'searchMessagesFilterUnreadMention'               => 'SearchMessagesFilter::UnreadMention',
      'ChatAction'                                      => 'ChatAction',
      'chatActionTyping'                                => 'ChatAction::Typing',
      'chatActionRecordingVideo'                        => 'ChatAction::RecordingVideo',
      'chatActionUploadingVideo'                        => 'ChatAction::UploadingVideo',
      'chatActionRecordingVoiceNote'                    => 'ChatAction::RecordingVoiceNote',
      'chatActionUploadingVoiceNote'                    => 'ChatAction::UploadingVoiceNote',
      'chatActionUploadingPhoto'                        => 'ChatAction::UploadingPhoto',
      'chatActionUploadingDocument'                     => 'ChatAction::UploadingDocument',
      'chatActionChoosingLocation'                      => 'ChatAction::ChoosingLocation',
      'chatActionChoosingContact'                       => 'ChatAction::ChoosingContact',
      'chatActionStartPlayingGame'                      => 'ChatAction::StartPlayingGame',
      'chatActionRecordingVideoNote'                    => 'ChatAction::RecordingVideoNote',
      'chatActionUploadingVideoNote'                    => 'ChatAction::UploadingVideoNote',
      'chatActionCancel'                                => 'ChatAction::Cancel',
      'UserStatus'                                      => 'UserStatus',
      'userStatusEmpty'                                 => 'UserStatus::Empty',
      'userStatusOnline'                                => 'UserStatus::Online',
      'userStatusOffline'                               => 'UserStatus::Offline',
      'userStatusRecently'                              => 'UserStatus::Recently',
      'userStatusLastWeek'                              => 'UserStatus::LastWeek',
      'userStatusLastMonth'                             => 'UserStatus::LastMonth',
      'stickers'                                        => 'Stickers',
      'emojis'                                          => 'Emojis',
      'stickerSet'                                      => 'StickerSet',
      'stickerSetInfo'                                  => 'StickerSetInfo',
      'stickerSets'                                     => 'StickerSets',
      'CallDiscardReason'                               => 'CallDiscardReason',
      'callDiscardReasonEmpty'                          => 'CallDiscardReason::Empty',
      'callDiscardReasonMissed'                         => 'CallDiscardReason::Missed',
      'callDiscardReasonDeclined'                       => 'CallDiscardReason::Declined',
      'callDiscardReasonDisconnected'                   => 'CallDiscardReason::Disconnected',
      'callDiscardReasonHungUp'                         => 'CallDiscardReason::HungUp',
      'callProtocol'                                    => 'CallProtocol',
      'callConnection'                                  => 'CallConnection',
      'callId'                                          => 'CallId',
      'CallState'                                       => 'CallState',
      'callStatePending'                                => 'CallState::Pending',
      'callStateExchangingKeys'                         => 'CallState::ExchangingKeys',
      'callStateReady'                                  => 'CallState::Ready',
      'callStateHangingUp'                              => 'CallState::HangingUp',
      'callStateDiscarded'                              => 'CallState::Discarded',
      'callStateError'                                  => 'CallState::Error',
      'CallProblem'                                     => 'CallProblem',
      'callProblemEcho'                                 => 'CallProblem::Echo',
      'callProblemNoise'                                => 'CallProblem::Noise',
      'callProblemInterruptions'                        => 'CallProblem::Interruptions',
      'callProblemDistortedSpeech'                      => 'CallProblem::DistortedSpeech',
      'callProblemSilentLocal'                          => 'CallProblem::SilentLocal',
      'callProblemSilentRemote'                         => 'CallProblem::SilentRemote',
      'callProblemDropped'                              => 'CallProblem::Dropped',
      'call'                                            => 'Call',
      'phoneNumberAuthenticationSettings'               => 'PhoneNumberAuthenticationSettings',
      'animations'                                      => 'Animations',
      'importedContacts'                                => 'ImportedContacts',
      'httpUrl'                                         => 'HttpUrl',
      'InputInlineQueryResult'                          => 'InputInlineQueryResult',
      'inputInlineQueryResultAnimatedGif'               => 'InputInlineQueryResult::AnimatedGif',
      'inputInlineQueryResultAnimatedMpeg4'             => 'InputInlineQueryResult::AnimatedMpeg4',
      'inputInlineQueryResultArticle'                   => 'InputInlineQueryResult::Article',
      'inputInlineQueryResultAudio'                     => 'InputInlineQueryResult::Audio',
      'inputInlineQueryResultContact'                   => 'InputInlineQueryResult::Contact',
      'inputInlineQueryResultDocument'                  => 'InputInlineQueryResult::Document',
      'inputInlineQueryResultGame'                      => 'InputInlineQueryResult::Game',
      'inputInlineQueryResultLocation'                  => 'InputInlineQueryResult::Location',
      'inputInlineQueryResultPhoto'                     => 'InputInlineQueryResult::Photo',
      'inputInlineQueryResultSticker'                   => 'InputInlineQueryResult::Sticker',
      'inputInlineQueryResultVenue'                     => 'InputInlineQueryResult::Venue',
      'inputInlineQueryResultVideo'                     => 'InputInlineQueryResult::Video',
      'inputInlineQueryResultVoiceNote'                 => 'InputInlineQueryResult::VoiceNote',
      'InlineQueryResult'                               => 'InlineQueryResult',
      'inlineQueryResultArticle'                        => 'InlineQueryResult::Article',
      'inlineQueryResultContact'                        => 'InlineQueryResult::Contact',
      'inlineQueryResultLocation'                       => 'InlineQueryResult::Location',
      'inlineQueryResultVenue'                          => 'InlineQueryResult::Venue',
      'inlineQueryResultGame'                           => 'InlineQueryResult::Game',
      'inlineQueryResultAnimation'                      => 'InlineQueryResult::Animation',
      'inlineQueryResultAudio'                          => 'InlineQueryResult::Audio',
      'inlineQueryResultDocument'                       => 'InlineQueryResult::Document',
      'inlineQueryResultPhoto'                          => 'InlineQueryResult::Photo',
      'inlineQueryResultSticker'                        => 'InlineQueryResult::Sticker',
      'inlineQueryResultVideo'                          => 'InlineQueryResult::Video',
      'inlineQueryResultVoiceNote'                      => 'InlineQueryResult::VoiceNote',
      'inlineQueryResults'                              => 'InlineQueryResults',
      'CallbackQueryPayload'                            => 'CallbackQueryPayload',
      'callbackQueryPayloadData'                        => 'CallbackQueryPayload::Data',
      'callbackQueryPayloadGame'                        => 'CallbackQueryPayload::Game',
      'callbackQueryAnswer'                             => 'CallbackQueryAnswer',
      'customRequestResult'                             => 'CustomRequestResult',
      'gameHighScore'                                   => 'GameHighScore',
      'gameHighScores'                                  => 'GameHighScores',
      'tonLiteServerResponse'                           => 'TonLiteServerResponse',
      'tonWalletPasswordSalt'                           => 'TonWalletPasswordSalt',
      'ChatEventAction'                                 => 'ChatEventAction',
      'chatEventMessageEdited'                          => 'ChatEventAction::MessageEdited',
      'chatEventMessageDeleted'                         => 'ChatEventAction::MessageDeleted',
      'chatEventPollStopped'                            => 'ChatEventAction::PollStopped',
      'chatEventMessagePinned'                          => 'ChatEventAction::MessagePinned',
      'chatEventMessageUnpinned'                        => 'ChatEventAction::MessageUnpinned',
      'chatEventMemberJoined'                           => 'ChatEventAction::MemberJoined',
      'chatEventMemberLeft'                             => 'ChatEventAction::MemberLeft',
      'chatEventMemberInvited'                          => 'ChatEventAction::MemberInvited',
      'chatEventMemberPromoted'                         => 'ChatEventAction::MemberPromoted',
      'chatEventMemberRestricted'                       => 'ChatEventAction::MemberRestricted',
      'chatEventTitleChanged'                           => 'ChatEventAction::TitleChanged',
      'chatEventPermissionsChanged'                     => 'ChatEventAction::PermissionsChanged',
      'chatEventDescriptionChanged'                     => 'ChatEventAction::DescriptionChanged',
      'chatEventUsernameChanged'                        => 'ChatEventAction::UsernameChanged',
      'chatEventPhotoChanged'                           => 'ChatEventAction::PhotoChanged',
      'chatEventInvitesToggled'                         => 'ChatEventAction::InvitesToggled',
      'chatEventLinkedChatChanged'                      => 'ChatEventAction::LinkedChatChanged',
      'chatEventSlowModeDelayChanged'                   => 'ChatEventAction::SlowModeDelayChanged',
      'chatEventSignMessagesToggled'                    => 'ChatEventAction::SignMessagesToggled',
      'chatEventStickerSetChanged'                      => 'ChatEventAction::StickerSetChanged',
      'chatEventLocationChanged'                        => 'ChatEventAction::LocationChanged',
      'chatEventIsAllHistoryAvailableToggled'           => 'ChatEventAction::IsAllHistoryAvailableToggled',
      'chatEvent'                                       => 'ChatEvent',
      'chatEvents'                                      => 'ChatEvents',
      'chatEventLogFilters'                             => 'ChatEventLogFilters',
      'LanguagePackStringValue'                         => 'LanguagePackStringValue',
      'languagePackStringValueOrdinary'                 => 'LanguagePackStringValue::Ordinary',
      'languagePackStringValuePluralized'               => 'LanguagePackStringValue::Pluralized',
      'languagePackStringValueDeleted'                  => 'LanguagePackStringValue::Deleted',
      'languagePackString'                              => 'LanguagePackString',
      'languagePackStrings'                             => 'LanguagePackStrings',
      'languagePackInfo'                                => 'LanguagePackInfo',
      'localizationTargetInfo'                          => 'LocalizationTargetInfo',
      'DeviceToken'                                     => 'DeviceToken',
      'deviceTokenFirebaseCloudMessaging'               => 'DeviceToken::FirebaseCloudMessaging',
      'deviceTokenApplePush'                            => 'DeviceToken::ApplePush',
      'deviceTokenApplePushVoIP'                        => 'DeviceToken::ApplePushVoIP',
      'deviceTokenWindowsPush'                          => 'DeviceToken::WindowsPush',
      'deviceTokenMicrosoftPush'                        => 'DeviceToken::MicrosoftPush',
      'deviceTokenMicrosoftPushVoIP'                    => 'DeviceToken::MicrosoftPushVoIP',
      'deviceTokenWebPush'                              => 'DeviceToken::WebPush',
      'deviceTokenSimplePush'                           => 'DeviceToken::SimplePush',
      'deviceTokenUbuntuPush'                           => 'DeviceToken::UbuntuPush',
      'deviceTokenBlackBerryPush'                       => 'DeviceToken::BlackBerryPush',
      'deviceTokenTizenPush'                            => 'DeviceToken::TizenPush',
      'pushReceiverId'                                  => 'PushReceiverId',
      'BackgroundFill'                                  => 'BackgroundFill',
      'backgroundFillSolid'                             => 'BackgroundFill::Solid',
      'backgroundFillGradient'                          => 'BackgroundFill::Gradient',
      'BackgroundType'                                  => 'BackgroundType',
      'backgroundTypeWallpaper'                         => 'BackgroundType::Wallpaper',
      'backgroundTypePattern'                           => 'BackgroundType::Pattern',
      'backgroundTypeFill'                              => 'BackgroundType::Fill',
      'background'                                      => 'Background',
      'backgrounds'                                     => 'Backgrounds',
      'InputBackground'                                 => 'InputBackground',
      'inputBackgroundLocal'                            => 'InputBackground::Local',
      'inputBackgroundRemote'                           => 'InputBackground::Remote',
      'hashtags'                                        => 'Hashtags',
      'CanTransferOwnershipResult'                      => 'CanTransferOwnershipResult',
      'canTransferOwnershipResultOk'                    => 'CanTransferOwnershipResult::Ok',
      'canTransferOwnershipResultPasswordNeeded'        => 'CanTransferOwnershipResult::PasswordNeeded',
      'canTransferOwnershipResultPasswordTooFresh'      => 'CanTransferOwnershipResult::PasswordTooFresh',
      'canTransferOwnershipResultSessionTooFresh'       => 'CanTransferOwnershipResult::SessionTooFresh',
      'CheckChatUsernameResult'                         => 'CheckChatUsernameResult',
      'checkChatUsernameResultOk'                       => 'CheckChatUsernameResult::Ok',
      'checkChatUsernameResultUsernameInvalid'          => 'CheckChatUsernameResult::UsernameInvalid',
      'checkChatUsernameResultUsernameOccupied'         => 'CheckChatUsernameResult::UsernameOccupied',
      'checkChatUsernameResultPublicChatsTooMuch'       => 'CheckChatUsernameResult::PublicChatsTooMuch',
      'checkChatUsernameResultPublicGroupsUnavailable'  => 'CheckChatUsernameResult::PublicGroupsUnavailable',
      'PushMessageContent'                              => 'PushMessageContent',
      'pushMessageContentHidden'                        => 'PushMessageContent::Hidden',
      'pushMessageContentAnimation'                     => 'PushMessageContent::Animation',
      'pushMessageContentAudio'                         => 'PushMessageContent::Audio',
      'pushMessageContentContact'                       => 'PushMessageContent::Contact',
      'pushMessageContentContactRegistered'             => 'PushMessageContent::ContactRegistered',
      'pushMessageContentDocument'                      => 'PushMessageContent::Document',
      'pushMessageContentGame'                          => 'PushMessageContent::Game',
      'pushMessageContentGameScore'                     => 'PushMessageContent::GameScore',
      'pushMessageContentInvoice'                       => 'PushMessageContent::Invoice',
      'pushMessageContentLocation'                      => 'PushMessageContent::Location',
      'pushMessageContentPhoto'                         => 'PushMessageContent::Photo',
      'pushMessageContentPoll'                          => 'PushMessageContent::Poll',
      'pushMessageContentScreenshotTaken'               => 'PushMessageContent::ScreenshotTaken',
      'pushMessageContentSticker'                       => 'PushMessageContent::Sticker',
      'pushMessageContentText'                          => 'PushMessageContent::Text',
      'pushMessageContentVideo'                         => 'PushMessageContent::Video',
      'pushMessageContentVideoNote'                     => 'PushMessageContent::VideoNote',
      'pushMessageContentVoiceNote'                     => 'PushMessageContent::VoiceNote',
      'pushMessageContentBasicGroupChatCreate'          => 'PushMessageContent::BasicGroupChatCreate',
      'pushMessageContentChatAddMembers'                => 'PushMessageContent::ChatAddMembers',
      'pushMessageContentChatChangePhoto'               => 'PushMessageContent::ChatChangePhoto',
      'pushMessageContentChatChangeTitle'               => 'PushMessageContent::ChatChangeTitle',
      'pushMessageContentChatDeleteMember'              => 'PushMessageContent::ChatDeleteMember',
      'pushMessageContentChatJoinByLink'                => 'PushMessageContent::ChatJoinByLink',
      'pushMessageContentMessageForwards'               => 'PushMessageContent::MessageForwards',
      'pushMessageContentMediaAlbum'                    => 'PushMessageContent::MediaAlbum',
      'NotificationType'                                => 'NotificationType',
      'notificationTypeNewMessage'                      => 'NotificationType::NewMessage',
      'notificationTypeNewSecretChat'                   => 'NotificationType::NewSecretChat',
      'notificationTypeNewCall'                         => 'NotificationType::NewCall',
      'notificationTypeNewPushMessage'                  => 'NotificationType::NewPushMessage',
      'NotificationGroupType'                           => 'NotificationGroupType',
      'notificationGroupTypeMessages'                   => 'NotificationGroupType::Messages',
      'notificationGroupTypeMentions'                   => 'NotificationGroupType::Mentions',
      'notificationGroupTypeSecretChat'                 => 'NotificationGroupType::SecretChat',
      'notificationGroupTypeCalls'                      => 'NotificationGroupType::Calls',
      'notification'                                    => 'Notification',
      'notificationGroup'                               => 'NotificationGroup',
      'OptionValue'                                     => 'OptionValue',
      'optionValueBoolean'                              => 'OptionValue::Boolean',
      'optionValueEmpty'                                => 'OptionValue::Empty',
      'optionValueInteger'                              => 'OptionValue::Integer',
      'optionValueString'                               => 'OptionValue::String',
      'jsonObjectMember'                                => 'JsonObjectMember',
      'JsonValue'                                       => 'JsonValue',
      'jsonValueNull'                                   => 'JsonValue::Null',
      'jsonValueBoolean'                                => 'JsonValue::Boolean',
      'jsonValueNumber'                                 => 'JsonValue::Number',
      'jsonValueString'                                 => 'JsonValue::String',
      'jsonValueArray'                                  => 'JsonValue::Array',
      'jsonValueObject'                                 => 'JsonValue::Object',
      'UserPrivacySettingRule'                          => 'UserPrivacySettingRule',
      'userPrivacySettingRuleAllowAll'                  => 'UserPrivacySettingRule::AllowAll',
      'userPrivacySettingRuleAllowContacts'             => 'UserPrivacySettingRule::AllowContacts',
      'userPrivacySettingRuleAllowUsers'                => 'UserPrivacySettingRule::AllowUsers',
      'userPrivacySettingRuleAllowChatMembers'          => 'UserPrivacySettingRule::AllowChatMembers',
      'userPrivacySettingRuleRestrictAll'               => 'UserPrivacySettingRule::RestrictAll',
      'userPrivacySettingRuleRestrictContacts'          => 'UserPrivacySettingRule::RestrictContacts',
      'userPrivacySettingRuleRestrictUsers'             => 'UserPrivacySettingRule::RestrictUsers',
      'userPrivacySettingRuleRestrictChatMembers'       => 'UserPrivacySettingRule::RestrictChatMembers',
      'userPrivacySettingRules'                         => 'UserPrivacySettingRules',
      'UserPrivacySetting'                              => 'UserPrivacySetting',
      'userPrivacySettingShowStatus'                    => 'UserPrivacySetting::ShowStatus',
      'userPrivacySettingShowProfilePhoto'              => 'UserPrivacySetting::ShowProfilePhoto',
      'userPrivacySettingShowLinkInForwardedMessages'   => 'UserPrivacySetting::ShowLinkInForwardedMessages',
      'userPrivacySettingShowPhoneNumber'               => 'UserPrivacySetting::ShowPhoneNumber',
      'userPrivacySettingAllowChatInvites'              => 'UserPrivacySetting::AllowChatInvites',
      'userPrivacySettingAllowCalls'                    => 'UserPrivacySetting::AllowCalls',
      'userPrivacySettingAllowPeerToPeerCalls'          => 'UserPrivacySetting::AllowPeerToPeerCalls',
      'userPrivacySettingAllowFindingByPhoneNumber'     => 'UserPrivacySetting::AllowFindingByPhoneNumber',
      'accountTtl'                                      => 'AccountTtl',
      'session'                                         => 'Session',
      'sessions'                                        => 'Sessions',
      'connectedWebsite'                                => 'ConnectedWebsite',
      'connectedWebsites'                               => 'ConnectedWebsites',
      'ChatReportReason'                                => 'ChatReportReason',
      'chatReportReasonSpam'                            => 'ChatReportReason::Spam',
      'chatReportReasonViolence'                        => 'ChatReportReason::Violence',
      'chatReportReasonPornography'                     => 'ChatReportReason::Pornography',
      'chatReportReasonChildAbuse'                      => 'ChatReportReason::ChildAbuse',
      'chatReportReasonCopyright'                       => 'ChatReportReason::Copyright',
      'chatReportReasonUnrelatedLocation'               => 'ChatReportReason::UnrelatedLocation',
      'chatReportReasonCustom'                          => 'ChatReportReason::Custom',
      'publicMessageLink'                               => 'PublicMessageLink',
      'messageLinkInfo'                                 => 'MessageLinkInfo',
      'filePart'                                        => 'FilePart',
      'FileType'                                        => 'FileType',
      'fileTypeNone'                                    => 'FileType::None',
      'fileTypeAnimation'                               => 'FileType::Animation',
      'fileTypeAudio'                                   => 'FileType::Audio',
      'fileTypeDocument'                                => 'FileType::Document',
      'fileTypePhoto'                                   => 'FileType::Photo',
      'fileTypeProfilePhoto'                            => 'FileType::ProfilePhoto',
      'fileTypeSecret'                                  => 'FileType::Secret',
      'fileTypeSecretThumbnail'                         => 'FileType::SecretThumbnail',
      'fileTypeSecure'                                  => 'FileType::Secure',
      'fileTypeSticker'                                 => 'FileType::Sticker',
      'fileTypeThumbnail'                               => 'FileType::Thumbnail',
      'fileTypeUnknown'                                 => 'FileType::Unknown',
      'fileTypeVideo'                                   => 'FileType::Video',
      'fileTypeVideoNote'                               => 'FileType::VideoNote',
      'fileTypeVoiceNote'                               => 'FileType::VoiceNote',
      'fileTypeWallpaper'                               => 'FileType::Wallpaper',
      'storageStatisticsByFileType'                     => 'StorageStatisticsByFileType',
      'storageStatisticsByChat'                         => 'StorageStatisticsByChat',
      'storageStatistics'                               => 'StorageStatistics',
      'storageStatisticsFast'                           => 'StorageStatisticsFast',
      'databaseStatistics'                              => 'DatabaseStatistics',
      'NetworkType'                                     => 'NetworkType',
      'networkTypeNone'                                 => 'NetworkType::None',
      'networkTypeMobile'                               => 'NetworkType::Mobile',
      'networkTypeMobileRoaming'                        => 'NetworkType::MobileRoaming',
      'networkTypeWiFi'                                 => 'NetworkType::WiFi',
      'networkTypeOther'                                => 'NetworkType::Other',
      'NetworkStatisticsEntry'                          => 'NetworkStatisticsEntry',
      'networkStatisticsEntryFile'                      => 'NetworkStatisticsEntry::File',
      'networkStatisticsEntryCall'                      => 'NetworkStatisticsEntry::Call',
      'networkStatistics'                               => 'NetworkStatistics',
      'autoDownloadSettings'                            => 'AutoDownloadSettings',
      'autoDownloadSettingsPresets'                     => 'AutoDownloadSettingsPresets',
      'ConnectionState'                                 => 'ConnectionState',
      'connectionStateWaitingForNetwork'                => 'ConnectionState::WaitingForNetwork',
      'connectionStateConnectingToProxy'                => 'ConnectionState::ConnectingToProxy',
      'connectionStateConnecting'                       => 'ConnectionState::Connecting',
      'connectionStateUpdating'                         => 'ConnectionState::Updating',
      'connectionStateReady'                            => 'ConnectionState::Ready',
      'TopChatCategory'                                 => 'TopChatCategory',
      'topChatCategoryUsers'                            => 'TopChatCategory::Users',
      'topChatCategoryBots'                             => 'TopChatCategory::Bots',
      'topChatCategoryGroups'                           => 'TopChatCategory::Groups',
      'topChatCategoryChannels'                         => 'TopChatCategory::Channels',
      'topChatCategoryInlineBots'                       => 'TopChatCategory::InlineBots',
      'topChatCategoryCalls'                            => 'TopChatCategory::Calls',
      'topChatCategoryForwardChats'                     => 'TopChatCategory::ForwardChats',
      'TMeUrlType'                                      => 'TMeUrlType',
      'tMeUrlTypeUser'                                  => 'TMeUrlType::User',
      'tMeUrlTypeSupergroup'                            => 'TMeUrlType::Supergroup',
      'tMeUrlTypeChatInvite'                            => 'TMeUrlType::ChatInvite',
      'tMeUrlTypeStickerSet'                            => 'TMeUrlType::StickerSet',
      'tMeUrl'                                          => 'TMeUrl',
      'tMeUrls'                                         => 'TMeUrls',
      'count'                                           => 'Count',
      'text'                                            => 'Text',
      'seconds'                                         => 'Seconds',
      'deepLinkInfo'                                    => 'DeepLinkInfo',
      'TextParseMode'                                   => 'TextParseMode',
      'textParseModeMarkdown'                           => 'TextParseMode::Markdown',
      'textParseModeHTML'                               => 'TextParseMode::HTML',
      'ProxyType'                                       => 'ProxyType',
      'proxyTypeSocks5'                                 => 'ProxyType::Socks5',
      'proxyTypeHttp'                                   => 'ProxyType::Http',
      'proxyTypeMtproto'                                => 'ProxyType::Mtproto',
      'proxy'                                           => 'Proxy',
      'proxies'                                         => 'Proxies',
      'inputSticker'                                    => 'InputSticker',
      'Update'                                          => 'Update',
      'updateAuthorizationState'                        => 'Update::AuthorizationState',
      'updateNewMessage'                                => 'Update::NewMessage',
      'updateMessageSendAcknowledged'                   => 'Update::MessageSendAcknowledged',
      'updateMessageSendSucceeded'                      => 'Update::MessageSendSucceeded',
      'updateMessageSendFailed'                         => 'Update::MessageSendFailed',
      'updateMessageContent'                            => 'Update::MessageContent',
      'updateMessageEdited'                             => 'Update::MessageEdited',
      'updateMessageViews'                              => 'Update::MessageViews',
      'updateMessageContentOpened'                      => 'Update::MessageContentOpened',
      'updateMessageMentionRead'                        => 'Update::MessageMentionRead',
      'updateMessageLiveLocationViewed'                 => 'Update::MessageLiveLocationViewed',
      'updateNewChat'                                   => 'Update::NewChat',
      'updateChatChatList'                              => 'Update::ChatChatList',
      'updateChatTitle'                                 => 'Update::ChatTitle',
      'updateChatPhoto'                                 => 'Update::ChatPhoto',
      'updateChatPermissions'                           => 'Update::ChatPermissions',
      'updateChatLastMessage'                           => 'Update::ChatLastMessage',
      'updateChatOrder'                                 => 'Update::ChatOrder',
      'updateChatIsPinned'                              => 'Update::ChatIsPinned',
      'updateChatIsMarkedAsUnread'                      => 'Update::ChatIsMarkedAsUnread',
      'updateChatIsSponsored'                           => 'Update::ChatIsSponsored',
      'updateChatHasScheduledMessages'                  => 'Update::ChatHasScheduledMessages',
      'updateChatDefaultDisableNotification'            => 'Update::ChatDefaultDisableNotification',
      'updateChatReadInbox'                             => 'Update::ChatReadInbox',
      'updateChatReadOutbox'                            => 'Update::ChatReadOutbox',
      'updateChatUnreadMentionCount'                    => 'Update::ChatUnreadMentionCount',
      'updateChatNotificationSettings'                  => 'Update::ChatNotificationSettings',
      'updateScopeNotificationSettings'                 => 'Update::ScopeNotificationSettings',
      'updateChatActionBar'                             => 'Update::ChatActionBar',
      'updateChatPinnedMessage'                         => 'Update::ChatPinnedMessage',
      'updateChatReplyMarkup'                           => 'Update::ChatReplyMarkup',
      'updateChatDraftMessage'                          => 'Update::ChatDraftMessage',
      'updateChatOnlineMemberCount'                     => 'Update::ChatOnlineMemberCount',
      'updateNotification'                              => 'Update::Notification',
      'updateNotificationGroup'                         => 'Update::NotificationGroup',
      'updateActiveNotifications'                       => 'Update::ActiveNotifications',
      'updateHavePendingNotifications'                  => 'Update::HavePendingNotifications',
      'updateDeleteMessages'                            => 'Update::DeleteMessages',
      'updateUserChatAction'                            => 'Update::UserChatAction',
      'updateUserStatus'                                => 'Update::UserStatus',
      'updateUser'                                      => 'Update::User',
      'updateBasicGroup'                                => 'Update::BasicGroup',
      'updateSupergroup'                                => 'Update::Supergroup',
      'updateSecretChat'                                => 'Update::SecretChat',
      'updateUserFullInfo'                              => 'Update::UserFullInfo',
      'updateBasicGroupFullInfo'                        => 'Update::BasicGroupFullInfo',
      'updateSupergroupFullInfo'                        => 'Update::SupergroupFullInfo',
      'updateServiceNotification'                       => 'Update::ServiceNotification',
      'updateFile'                                      => 'Update::File',
      'updateFileGenerationStart'                       => 'Update::FileGenerationStart',
      'updateFileGenerationStop'                        => 'Update::FileGenerationStop',
      'updateCall'                                      => 'Update::Call',
      'updateUserPrivacySettingRules'                   => 'Update::UserPrivacySettingRules',
      'updateUnreadMessageCount'                        => 'Update::UnreadMessageCount',
      'updateUnreadChatCount'                           => 'Update::UnreadChatCount',
      'updateOption'                                    => 'Update::Option',
      'updateInstalledStickerSets'                      => 'Update::InstalledStickerSets',
      'updateTrendingStickerSets'                       => 'Update::TrendingStickerSets',
      'updateRecentStickers'                            => 'Update::RecentStickers',
      'updateFavoriteStickers'                          => 'Update::FavoriteStickers',
      'updateSavedAnimations'                           => 'Update::SavedAnimations',
      'updateSelectedBackground'                        => 'Update::SelectedBackground',
      'updateLanguagePackStrings'                       => 'Update::LanguagePackStrings',
      'updateConnectionState'                           => 'Update::ConnectionState',
      'updateTermsOfService'                            => 'Update::TermsOfService',
      'updateUsersNearby'                               => 'Update::UsersNearby',
      'updateNewInlineQuery'                            => 'Update::NewInlineQuery',
      'updateNewChosenInlineResult'                     => 'Update::NewChosenInlineResult',
      'updateNewCallbackQuery'                          => 'Update::NewCallbackQuery',
      'updateNewInlineCallbackQuery'                    => 'Update::NewInlineCallbackQuery',
      'updateNewShippingQuery'                          => 'Update::NewShippingQuery',
      'updateNewPreCheckoutQuery'                       => 'Update::NewPreCheckoutQuery',
      'updateNewCustomEvent'                            => 'Update::NewCustomEvent',
      'updateNewCustomQuery'                            => 'Update::NewCustomQuery',
      'updatePoll'                                      => 'Update::Poll',
      'updates'                                         => 'Updates',
      'LogStream'                                       => 'LogStream',
      'logStreamDefault'                                => 'LogStream::Default',
      'logStreamFile'                                   => 'LogStream::File',
      'logStreamEmpty'                                  => 'LogStream::Empty',
      'logVerbosityLevel'                               => 'LogVerbosityLevel',
      'logTags'                                         => 'LogTags'
  }.freeze
  
  module_function
  
  # Recursively wraps a hash into typed classes
  def wrap(object)
    # Wrapping each entry in array
    if object.kind_of?(::Array)
      object.map { |o| wrap(o) }
    elsif object.kind_of?(::Hash)
      type = object.delete('@type')
      
      object.each do |key, val|
        if val.respond_to?(:each)
          object[key] = wrap(val)
        end
      end
      
      unless type
        return object
      end
      
      if (klass = LOOKUP_TABLE[type])
        const_get(klass).new(object)
      else
        raise ArgumentError.new("Can't find class for #{type}")
      end
    else 
      object
    end
  end
  
  # Simple implementation for internal use only.
  def camelize(str)
    str.gsub(/(?:_|(\/)|^)([a-z\d]*)/i) { "#{$1}#{$2.capitalize}" }
  end
  
  %w[
    account_ttl
    address
    animation
    animations
    audio
    authentication_code_info
    authentication_code_type
    authorization_state
    auto_download_settings
    auto_download_settings_presets
    background
    background_fill
    background_type
    backgrounds
    base
    basic_group
    basic_group_full_info
    bot_command
    bot_info
    call
    call_connection
    call_discard_reason
    call_id
    call_problem
    call_protocol
    call_state
    callback_query_answer
    callback_query_payload
    can_transfer_ownership_result
    chat
    chat_action
    chat_action_bar
    chat_administrator
    chat_administrators
    chat_event
    chat_event_action
    chat_event_log_filters
    chat_events
    chat_invite_link
    chat_invite_link_info
    chat_list
    chat_location
    chat_member
    chat_member_status
    chat_members
    chat_members_filter
    chat_nearby
    chat_notification_settings
    chat_permissions
    chat_photo
    chat_report_reason
    chat_type
    chats
    chats_nearby
    check_chat_username_result
    connected_website
    connected_websites
    connection_state
    contact
    count
    custom_request_result
    database_statistics
    date
    dated_file
    deep_link_info
    device_token
    document
    draft_message
    email_address_authentication_code_info
    emojis
    encrypted_credentials
    encrypted_passport_element
    error
    file
    file_part
    file_type
    formatted_text
    found_messages
    game
    game_high_score
    game_high_scores
    hashtags
    http_url
    identity_document
    imported_contacts
    inline_keyboard_button
    inline_keyboard_button_type
    inline_query_result
    inline_query_results
    input_background
    input_credentials
    input_file
    input_identity_document
    input_inline_query_result
    input_message_content
    input_passport_element
    input_passport_element_error
    input_passport_element_error_source
    input_personal_document
    input_sticker
    input_thumbnail
    invoice
    json_object_member
    json_value
    keyboard_button
    keyboard_button_type
    labeled_price_part
    language_pack_info
    language_pack_string
    language_pack_string_value
    language_pack_strings
    local_file
    localization_target_info
    location
    log_stream
    log_tags
    log_verbosity_level
    login_url_info
    mask_point
    mask_position
    message
    message_content
    message_forward_info
    message_forward_origin
    message_link_info
    message_scheduling_state
    message_sending_state
    messages
    minithumbnail
    network_statistics
    network_statistics_entry
    network_type
    notification
    notification_group
    notification_group_type
    notification_settings_scope
    notification_type
    ok
    option_value
    order_info
    page_block
    page_block_caption
    page_block_horizontal_alignment
    page_block_list_item
    page_block_related_article
    page_block_table_cell
    page_block_vertical_alignment
    passport_authorization_form
    passport_element
    passport_element_error
    passport_element_error_source
    passport_element_type
    passport_elements
    passport_elements_with_errors
    passport_required_element
    passport_suitable_element
    password_state
    payment_form
    payment_receipt
    payment_result
    payments_provider_stripe
    personal_details
    personal_document
    phone_number_authentication_settings
    photo
    photo_size
    poll
    poll_option
    profile_photo
    proxies
    proxy
    proxy_type
    public_chat_type
    public_message_link
    push_message_content
    push_receiver_id
    recovery_email_address
    remote_file
    reply_markup
    rich_text
    saved_credentials
    scope_notification_settings
    search_messages_filter
    seconds
    secret_chat
    secret_chat_state
    send_message_options
    session
    sessions
    shipping_option
    sticker
    sticker_set
    sticker_set_info
    sticker_sets
    stickers
    storage_statistics
    storage_statistics_by_chat
    storage_statistics_by_file_type
    storage_statistics_fast
    supergroup
    supergroup_full_info
    supergroup_members_filter
    t_me_url
    t_me_url_type
    t_me_urls
    tdlib_parameters
    temporary_password_state
    terms_of_service
    text
    text_entities
    text_entity
    text_entity_type
    text_parse_mode
    ton_lite_server_response
    ton_wallet_password_salt
    top_chat_category
    update
    updates
    user
    user_full_info
    user_privacy_setting
    user_privacy_setting_rule
    user_privacy_setting_rules
    user_profile_photo
    user_profile_photos
    user_status
    user_type
    users
    validated_order_info
    venue
    video
    video_note
    voice_note
    web_page
    web_page_instant_view
  ].each do |type|
    autoload camelize(type), "tdlib/types/#{type}"
  end
end
