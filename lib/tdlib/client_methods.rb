# This is a generated module from current TDLib scheme
# It contains all available TDLib methods
module TD::ClientMethods
  # Accepts an incoming call.
  #
  # @param call_id [Integer] Call identifier.
  # @param protocol [CallProtocol] Description of the call protocols supported by the client.
  # @return [Ok]
  def accept_call(call_id, protocol)
    broadcast('@type'    => 'acceptCall',
              'call_id'  => call_id,
              'protocol' => protocol)
  end
  
  # Accepts Telegram terms of services.
  #
  # @param terms_of_service_id [String] Terms of service identifier.
  # @return [Ok]
  def accept_terms_of_service(terms_of_service_id)
    broadcast('@type'               => 'acceptTermsOfService',
              'terms_of_service_id' => terms_of_service_id)
  end
  
  # Adds a new member to a chat.
  # Members can't be added to private or secret chats.
  # Members will not be added until the chat state has been synchronized with the server.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_id [Integer] Identifier of the user.
  # @param forward_limit [Integer] The number of earlier messages from the chat to be forwarded to the new member; up
  #   to 300.
  #   Ignored for supergroups and channels.
  # @return [Ok]
  def add_chat_member(chat_id, user_id, forward_limit: 300)
    broadcast('@type'         => 'addChatMember',
              'chat_id'       => chat_id,
              'user_id'       => user_id,
              'forward_limit' => forward_limit)
  end
  
  # Adds multiple new members to a chat.
  # Currently this option is only available for supergroups and channels.
  # This option can't be used to join a chat.
  # Members can't be added to a channel if it has more than 200 members.
  # Members will not be added until the chat state has been synchronized with the server.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_ids [Array<Integer>] Identifiers of the users to be added to the chat.
  # @return [Ok]
  def add_chat_members(chat_id, user_ids)
    broadcast('@type'    => 'addChatMembers',
              'chat_id'  => chat_id,
              'user_ids' => user_ids)
  end
  
  # Adds a new sticker to the list of favorite stickers.
  # The new sticker is added to the top of the list.
  # If the sticker was already in the list, it is removed from the list first.
  # Only stickers belonging to a sticker set can be added to this list.
  #
  # @param sticker [InputFile] Sticker file to add.
  # @return [Ok]
  def add_favorite_sticker(sticker)
    broadcast('@type'   => 'addFavoriteSticker',
              'sticker' => sticker)
  end
  
  # Adds a local message to a chat.
  # The message is persistent across application restarts only if the message database is used.
  #
  # @param chat_id [Integer] Target chat.
  # @param sender_user_id [Integer] Identifier of the user who will be shown as the sender of the message; may be 0 for
  #   channel posts.
  # @param reply_to_message_id [Integer] Identifier of the message to reply to or 0.
  # @param disable_notification [Boolean] Pass true to disable notification for the message.
  # @param input_message_content [InputMessageContent] The content of the message to be added.
  # @return [Message] the added message.
  def add_local_message(chat_id, input_message_content,
                        sender_user_id: 0, reply_to_message_id: 0, disable_notification: false)
    broadcast('@type'                 => 'addLocalMessage',
              'chat_id'               => chat_id,
              'sender_user_id'        => sender_user_id,
              'reply_to_message_id'   => reply_to_message_id,
              'disable_notification'  => disable_notification,
              'input_message_content' => input_message_content)
  end
  
  # Adds the specified data to data usage statistics.
  # Can be called before authorization.
  #
  # @param entry [NetworkStatisticsEntry] The network statistics entry with the data to be added to statistics.
  # @return [Ok]
  def add_network_statistics(entry)
    broadcast('@type' => 'addNetworkStatistics',
              'entry' => entry)
  end
  
  # Adds a proxy server for network requests.
  # Can be called before authorization.
  #
  # @param server [String] Proxy server IP address.
  # @param port [Integer] Proxy server port.
  # @param enable [Boolean] True, if the proxy should be enabled.
  # @param type [ProxyType] Proxy type.
  # @return [Proxy]
  def add_proxy(server, port, type, enable = false)
    broadcast('@type'  => 'addProxy',
              'server' => server,
              'port'   => port,
              'enable' => enable,
              'type'   => type)
  end
  
  # Manually adds a new sticker to the list of recently used stickers.
  # The new sticker is added to the top of the list.
  # If the sticker was already in the list, it is removed from the list first.
  # Only stickers belonging to a sticker set can be added to this list.
  #
  # @param is_attached [Boolean] Pass true to add the sticker to the list of stickers recently attached to photo or
  #   video files; pass false to add the sticker to the list of recently sent stickers.
  # @param sticker [InputFile] Sticker file to add.
  # @return [Stickers]
  def add_recent_sticker(sticker, is_attached: false)
    broadcast('@type'       => 'addRecentSticker',
              'is_attached' => is_attached,
              'sticker'     => sticker)
  end
  
  # Adds a chat to the list of recently found chats.
  # The chat is added to the beginning of the list.
  # If the chat is already in the list, it will be removed from the list first.
  #
  # @param chat_id [Integer] Identifier of the chat to add.
  # @return [Ok]
  def add_recently_found_chat(chat_id)
    broadcast('@type'   => 'addRecentlyFoundChat',
              'chat_id' => chat_id)
  end
  
  # Manually adds a new animation to the list of saved animations.
  # The new animation is added to the beginning of the list.
  # If the animation was already in the list, it is removed first.
  # Only non-secret video animations with MIME type "video/mp4" can be added to the list.
  #
  # @param animation [InputFile] The animation file to be added.
  #   Only animations known to the server (i.e.
  #   successfully sent via a message) can be added to the list.
  # @return [Ok]
  def add_saved_animation(animation)
    broadcast('@type'     => 'addSavedAnimation',
              'animation' => animation)
  end
  
  # Adds a new sticker to a set; for bots only.
  #
  # @param user_id [Integer] Sticker set owner.
  # @param name [String] Sticker set name.
  # @param sticker [InputSticker] Sticker to add to the set.
  # @return [StickerSet] the sticker set.
  def add_sticker_to_set(user_id, name, sticker)
    broadcast('@type'   => 'addStickerToSet',
              'user_id' => user_id,
              'name'    => name,
              'sticker' => sticker)
  end
  
  # Sets the result of a callback query; for bots only.
  #
  # @param callback_query_id [Integer] Identifier of the callback query.
  # @param text [String] Text of the answer.
  # @param show_alert [Boolean] If true, an alert should be shown to the user instead of a toast notification.
  # @param url [String] URL to be opened.
  # @param cache_time [Integer] Time during which the result of the query can be cached, in seconds.
  # @return [Ok]
  def answer_callback_query(callback_query_id, text, show_alert, url, cache_time)
    broadcast('@type'             => 'answerCallbackQuery',
              'callback_query_id' => callback_query_id,
              'text'              => text,
              'show_alert'        => show_alert,
              'url'               => url,
              'cache_time'        => cache_time)
  end
  
  # Answers a custom query; for bots only.
  #
  # @param custom_query_id [Integer] Identifier of a custom query.
  # @param data [String] JSON-serialized answer to the query.
  # @return [Ok]
  def answer_custom_query(custom_query_id, data)
    broadcast('@type'           => 'answerCustomQuery',
              'custom_query_id' => custom_query_id,
              'data'            => data)
  end
  
  # Sets the result of an inline query; for bots only.
  #
  # @param inline_query_id [Integer] Identifier of the inline query.
  # @param is_personal [Boolean] True, if the result of the query can be cached for the specified user.
  # @param results [Array<InputInlineQueryResult>] The results of the query.
  # @param cache_time [Integer] Allowed time to cache the results of the query, in seconds.
  # @param next_offset [String] Offset for the next inline query; pass an empty string if there are no more results.
  # @param switch_pm_text [String] If non-empty, this text should be shown on the button that opens a private chat with
  #   the bot and sends a start message to the bot with the parameter switch_pm_parameter.
  # @param switch_pm_parameter [String] The parameter for the bot start message.
  # @return [Ok]
  def answer_inline_query(inline_query_id, is_personal, results, cache_time, next_offset, switch_pm_text,
                          switch_pm_parameter)
    broadcast('@type'               => 'answerInlineQuery',
              'inline_query_id'     => inline_query_id,
              'is_personal'         => is_personal,
              'results'             => results,
              'cache_time'          => cache_time,
              'next_offset'         => next_offset,
              'switch_pm_text'      => switch_pm_text,
              'switch_pm_parameter' => switch_pm_parameter)
  end
  
  # Sets the result of a pre-checkout query; for bots only.
  #
  # @param pre_checkout_query_id [Integer] Identifier of the pre-checkout query.
  # @param error_message [String] An error message, empty on success.
  # @return [Ok]
  def answer_pre_checkout_query(pre_checkout_query_id, error_message: nil)
    broadcast('@type'                 => 'answerPreCheckoutQuery',
              'pre_checkout_query_id' => pre_checkout_query_id,
              'error_message'         => error_message)
  end
  
  # Sets the result of a shipping query; for bots only.
  #
  # @param shipping_query_id [Integer] Identifier of the shipping query.
  # @param shipping_options [Array<ShippingOption>] Available shipping options.
  # @param error_message [String] An error message, empty on success.
  # @return [Ok]
  def answer_shipping_query(shipping_query_id, shipping_options, error_message: nil)
    broadcast('@type'             => 'answerShippingQuery',
              'shipping_query_id' => shipping_query_id,
              'shipping_options'  => shipping_options,
              'error_message'     => error_message)
  end
  
  # Adds a user to the blacklist.
  #
  # @param user_id [Integer] User identifier.
  # @return [Ok]
  def block_user(user_id)
    broadcast('@type'   => 'blockUser',
              'user_id' => user_id)
  end
  
  # Stops the downloading of a file.
  # If a file has already been downloaded, does nothing.
  #
  # @param file_id [Integer] Identifier of a file to stop downloading.
  # @param only_if_pending [Boolean] Pass true to stop downloading only if it hasn't been started, i.e.
  #   request hasn't been sent to server.
  # @return [Ok]
  def cancel_download_file(file_id, only_if_pending: false)
    broadcast('@type'           => 'cancelDownloadFile',
              'file_id'         => file_id,
              'only_if_pending' => only_if_pending)
  end
  
  # Stops the uploading of a file.
  # Supported only for files uploaded by using {#upload_file}.
  # For other files the behavior is undefined.
  #
  # @param file_id [Integer] Identifier of the file to stop uploading.
  # @return [Ok]
  def cancel_upload_file(file_id)
    broadcast('@type'   => 'cancelUploadFile',
              'file_id' => file_id)
  end
  
  # Used to let the server know whether a chat is spam or not.
  # Can be used only if {TD::Types::ChatReportSpamState#can_report_spam} is true.
  # After this request, {TD::Types::ChatReportSpamState#can_report_spam} becomes false forever.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param is_spam_chat [Boolean] If true, the chat will be reported as spam; otherwise it will be marked as not spam.
  # @return [Ok]
  def change_chat_report_spam_state(chat_id, is_spam_chat)
    broadcast('@type'        => 'changeChatReportSpamState',
              'chat_id'      => chat_id,
              'is_spam_chat' => is_spam_chat)
  end
  
  # Changes imported contacts using the list of current user contacts saved on the device.
  # Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts.
  # Query result depends on the result of the previous query, so only one query is possible at the same time.
  #
  # @param contacts [Array<Contact>] The new list of contacts, contact's vCard are ignored and are not imported.
  # @return [ImportedContacts]
  def change_imported_contacts(contacts)
    broadcast('@type'    => 'changeImportedContacts',
              'contacts' => contacts)
  end
  
  # Changes the phone number of the user and sends an authentication code to the user's new phone number.
  #
  # @param phone_number [String] The new phone number of the user in international format.
  # @param allow_flash_call [Boolean] Pass true if the code can be sent via flash call to the specified phone number.
  # @param is_current_phone_number [Boolean] Pass true if the phone number is used on the current device.
  #   Ignored if allow_flash_call is false.
  # @return [AuthenticationCodeInfo] On success, returns information about the sent code.
  def change_phone_number(phone_number, allow_flash_call: false, is_current_phone_number: false)
    broadcast('@type'                   => 'changePhoneNumber',
              'phone_number'            => phone_number,
              'allow_flash_call'        => allow_flash_call,
              'is_current_phone_number' => is_current_phone_number)
  end
  
  # Installs/uninstalls or activates/archives a sticker set.
  #
  # @param set_id [Integer] Identifier of the sticker set.
  # @param is_installed [Boolean] The new value of is_installed.
  # @param is_archived [Boolean] The new value of is_archived.
  #   A sticker set can't be installed and archived simultaneously.
  # @return [Ok]
  def change_sticker_set(set_id, is_installed, is_archived)
    broadcast('@type'        => 'changeStickerSet',
              'set_id'       => set_id,
              'is_installed' => is_installed,
              'is_archived'  => is_archived)
  end
  
  # Checks the authentication token of a bot; to log in as a bot.
  # Works only when the current authorization state is {TD::Types::AuthorizationState::WaitPhoneNumber}.
  # Can be used instead of {#set_authentication_phone_number} and {#check_authentication_code} to log in.
  #
  # @param token [String] The bot token.
  # @return [Ok]
  def check_authentication_bot_token(token)
    broadcast('@type' => 'checkAuthenticationBotToken',
              'token' => token)
  end
  
  # Checks the authentication code.
  # Works only when the current authorization state is {TD::Types::AuthorizationState::WaitCode}.
  #
  # @param code [String] The verification code received via SMS, Telegram message, phone call, or flash call.
  # @param first_name [String] If the user is not yet registered, the first name of the user; 1-255 characters.
  # @param last_name [String] If the user is not yet registered; the last name of the user; optional; 0-255 characters.
  # @return [Ok]
  def check_authentication_code(code, first_name = nil, last_name = nil)
    broadcast('@type'      => 'checkAuthenticationCode',
              'code'       => code,
              'first_name' => first_name,
              'last_name'  => last_name)
  end
  
  # Checks the authentication password for correctness.
  # Works only when the current authorization state is {TD::Types::AuthorizationState::WaitPassword}.
  #
  # @param password [String] The password to check.
  # @return [Ok]
  def check_authentication_password(password)
    broadcast('@type'    => 'checkAuthenticationPassword',
              'password' => password)
  end
  
  # Checks the authentication code sent to confirm a new phone number of the user.
  #
  # @param code [String] Verification code received by SMS, phone call or flash call.
  # @return [Ok]
  def check_change_phone_number_code(code)
    broadcast('@type' => 'checkChangePhoneNumberCode',
              'code'  => code)
  end
  
  # Checks the validity of an invite link for a chat and returns information about the corresponding chat.
  #
  # @param invite_link [String] Invite link to be checked; should begin with "https://t.me/joinchat/",
  #   "https://telegram.me/joinchat/", or "https://telegram.dog/joinchat/".
  # @return [ChatInviteLinkInfo]
  def check_chat_invite_link(invite_link)
    broadcast('@type'       => 'checkChatInviteLink',
              'invite_link' => invite_link)
  end
  
  # Checks whether a username can be set for a chat.
  #
  # @param chat_id [Integer] Chat identifier; should be identifier of a supergroup chat, or a channel chat, or a
  #   private chat with self, or zero if chat is being created.
  # @param username [String] Username to be checked.
  # @return [CheckChatUsernameResult]
  def check_chat_username(chat_id, username)
    broadcast('@type'    => 'checkChatUsername',
              'chat_id'  => chat_id,
              'username' => username)
  end
  
  # Checks the database encryption key for correctness.
  # Works only when the current authorization state is {TD::Types::AuthorizationState::WaitEncryptionKey}.
  #
  # @param encryption_key [String] Encryption key to check or set up.
  # @return [Ok]
  def check_database_encryption_key(encryption_key)
    broadcast('@type'          => 'checkDatabaseEncryptionKey',
              'encryption_key' => encryption_key)
  end
  
  # Checks the email address verification code for Telegram Passport.
  #
  # @param code [String] Verification code.
  # @return [Ok]
  def check_email_address_verification_code(code)
    broadcast('@type' => 'checkEmailAddressVerificationCode',
              'code'  => code)
  end
  
  # Checks phone number confirmation code.
  #
  # @param code [String] The phone number confirmation code.
  # @return [Ok]
  def check_phone_number_confirmation_code(code)
    broadcast('@type' => 'checkPhoneNumberConfirmationCode',
              'code'  => code)
  end
  
  # Checks the phone number verification code for Telegram Passport.
  #
  # @param code [String] Verification code.
  # @return [Ok]
  def check_phone_number_verification_code(code)
    broadcast('@type' => 'checkPhoneNumberVerificationCode',
              'code'  => code)
  end
  
  # Removes potentially dangerous characters from the name of a file.
  # The encoding of the file name is supposed to be UTF-8.
  # Returns an empty string on failure.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # @param file_name [String] File name or path to the file.
  # @return [Text]
  def clean_file_name(file_name)
    broadcast('@type'     => 'cleanFileName',
              'file_name' => file_name)
  end
  
  # Clears draft messages in all chats.
  #
  # @param exclude_secret_chats [Boolean] If true, local draft messages in secret chats will not be cleared.
  # @return [Ok]
  def clear_all_draft_messages(exclude_secret_chats)
    broadcast('@type'                => 'clearAllDraftMessages',
              'exclude_secret_chats' => exclude_secret_chats)
  end
  
  # Clears all imported contacts, contacts list remains unchanged.
  #
  # @return [Ok]
  def clear_imported_contacts
    broadcast('@type' => 'clearImportedContacts')
  end
  
  # Clears the list of recently used stickers.
  #
  # @param is_attached [Boolean] Pass true to clear the list of stickers recently attached to photo or video files;
  #   pass false to clear the list of recently sent stickers.
  # @return [Ok]
  def clear_recent_stickers(is_attached = false)
    broadcast('@type'       => 'clearRecentStickers',
              'is_attached' => is_attached)
  end
  
  # Clears the list of recently found chats.
  #
  # @return [Ok]
  def clear_recently_found_chats
    broadcast('@type' => 'clearRecentlyFoundChats')
  end
  
  # Closes the TDLib instance.
  # All databases will be flushed to disk and properly closed.
  # After the close completes, {TD::Types::Update::AuthorizationState} with {TD::Types::AuthorizationState::Closed}
  #   will be sent.
  #
  # @return [Ok]
  def close
    broadcast('@type' => 'close')
  end
  
  # This method should be called if the chat is closed by the user.
  # Many useful activities depend on the chat being opened or closed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [Ok]
  def close_chat(chat_id)
    broadcast('@type'   => 'closeChat',
              'chat_id' => chat_id)
  end
  
  # Closes a secret chat, effectively transfering its state to {TD::Types::SecretChatState::Closed}.
  #
  # @param secret_chat_id [Integer] Secret chat identifier.
  # @return [Ok]
  def close_secret_chat(secret_chat_id)
    broadcast('@type'          => 'closeSecretChat',
              'secret_chat_id' => secret_chat_id)
  end
  
  # Returns an existing chat corresponding to a known basic group.
  #
  # @param basic_group_id [Integer] Basic group identifier.
  # @param force [Boolean] If true, the chat will be created without network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  # @return [Chat]
  def create_basic_group_chat(basic_group_id, force = false)
    broadcast('@type'          => 'createBasicGroupChat',
              'basic_group_id' => basic_group_id,
              'force'          => force)
  end
  
  # Creates a new call.
  #
  # @param user_id [Integer] Identifier of the user to be called.
  # @param protocol [CallProtocol] Description of the call protocols supported by the client.
  # @return [CallId]
  def create_call(user_id, protocol)
    broadcast('@type'    => 'createCall',
              'user_id'  => user_id,
              'protocol' => protocol)
  end
  
  # Creates a new basic group and sends a corresponding {TD::Types::MessageContent::BasicGroupChatCreate}.
  #
  # @param user_ids [Array<Integer>] Identifiers of users to be added to the basic group.
  # @param title [String] Title of the new basic group; 1-255 characters.
  # @return [Chat] the newly created chat.
  def create_new_basic_group_chat(user_ids, title)
    broadcast('@type'    => 'createNewBasicGroupChat',
              'user_ids' => user_ids,
              'title'    => title)
  end
  
  # Creates a new secret chat.
  #
  # @param user_id [Integer] Identifier of the target user.
  # @return [Chat] the newly created chat.
  def create_new_secret_chat(user_id)
    broadcast('@type'   => 'createNewSecretChat',
              'user_id' => user_id)
  end
  
  # Creates a new sticker set; for bots only.
  #
  # @param user_id [Integer] Sticker set owner.
  # @param title [String] Sticker set title; 1-64 characters.
  # @param name [String] Sticker set name.
  #   Can contain only English letters, digits and underscores.
  #   Must end with *"_by_<bot username>"* (*<bot_username>* is case insensitive); 1-64 characters.
  # @param is_masks [Boolean] True, if stickers are masks.
  # @param stickers [Array<InputSticker>] List of stickers to be added to the set.
  # @return [StickerSet] the newly created sticker set.
  def create_new_sticker_set(user_id, title, name, stickers, is_masks: false)
    broadcast('@type'    => 'createNewStickerSet',
              'user_id'  => user_id,
              'title'    => title,
              'name'     => name,
              'is_masks' => is_masks,
              'stickers' => stickers)
  end
  
  # Creates a new supergroup or channel and sends a corresponding {TD::Types::MessageContent::SupergroupChatCreate}.
  #
  # @param title [String] Title of the new chat; 1-255 characters.
  # @param is_channel [Boolean] True, if a channel chat should be created.
  # @param description [String] Chat description; 0-255 characters.
  # @return [Chat] the newly created chat.
  def create_new_supergroup_chat(title, description, is_channel: false)
    broadcast('@type'       => 'createNewSupergroupChat',
              'title'       => title,
              'is_channel'  => is_channel,
              'description' => description)
  end
  
  # Returns an existing chat corresponding to a given user.
  #
  # @param user_id [Integer] User identifier.
  # @param force [Boolean] If true, the chat will be created without network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  # @return [Chat]
  def create_private_chat(user_id, force = false)
    broadcast('@type'   => 'createPrivateChat',
              'user_id' => user_id,
              'force'   => force)
  end
  
  # Returns an existing chat corresponding to a known secret chat.
  #
  # @param secret_chat_id [Integer] Secret chat identifier.
  # @return [Chat]
  def create_secret_chat(secret_chat_id)
    broadcast('@type'          => 'createSecretChat',
              'secret_chat_id' => secret_chat_id)
  end
  
  # Returns an existing chat corresponding to a known supergroup or channel.
  #
  # @param supergroup_id [Integer] Supergroup or channel identifier.
  # @param force [Boolean] If true, the chat will be created without network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  # @return [Chat]
  def create_supergroup_chat(supergroup_id, force = false)
    broadcast('@type'         => 'createSupergroupChat',
              'supergroup_id' => supergroup_id,
              'force'         => force)
  end
  
  # Creates a new temporary password for processing payments.
  #
  # @param password [String] Persistent user password.
  # @param valid_for [Integer] Time during which the temporary password will be valid, in seconds; should be between 60
  #   and 86400.
  # @return [TemporaryPasswordState]
  def create_temporary_password(password, valid_for)
    broadcast('@type'     => 'createTemporaryPassword',
              'password'  => password,
              'valid_for' => valid_for)
  end
  
  # Deletes the account of the current user, deleting all information associated with the user from the server.
  # The phone number of the account can be used to create a new account.
  # Can be called before authorization when the current authorization state is
  #   {TD::Types::AuthorizationState::WaitPassword}.
  #
  # @param reason [String] The reason why the account was deleted; optional.
  # @return [Ok]
  def delete_account(reason = nil)
    broadcast('@type'  => 'deleteAccount',
              'reason' => reason)
  end
  
  # Deletes all messages in the chat only for the user.
  # Cannot be used in channels and public supergroups.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param remove_from_chat_list [Boolean] Pass true if the chat should be removed from the chats list.
  # @return [Ok]
  def delete_chat_history(chat_id, remove_from_chat_list = false)
    broadcast('@type'                 => 'deleteChatHistory',
              'chat_id'               => chat_id,
              'remove_from_chat_list' => remove_from_chat_list)
  end
  
  # Deletes all messages sent by the specified user to a chat.
  # Supported only in supergroups; requires can_delete_messages administrator privileges.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_id [Integer] User identifier.
  # @return [Ok]
  def delete_chat_messages_from_user(chat_id, user_id)
    broadcast('@type'   => 'deleteChatMessagesFromUser',
              'chat_id' => chat_id,
              'user_id' => user_id)
  end
  
  # Deletes the default reply markup from a chat.
  # Must be called after a one-time keyboard or a ForceReply reply markup has been used.
  # UpdateChatReplyMarkup will be sent if the reply markup will be changed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] The message identifier of the used keyboard.
  # @return [Ok]
  def delete_chat_reply_markup(chat_id, message_id)
    broadcast('@type'      => 'deleteChatReplyMarkup',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Deletes a file from the TDLib file cache.
  #
  # @param file_id [Integer] Identifier of the file to delete.
  # @return [Ok]
  def delete_file(file_id)
    broadcast('@type'   => 'deleteFile',
              'file_id' => file_id)
  end
  
  # Deletes all information about a language pack in the current localization target.
  # The language pack that is currently in use can't be deleted.
  #
  # @param language_pack_id [String] Identifier of the language pack to delete.
  # @return [Ok]
  def delete_language_pack(language_pack_id)
    broadcast('@type'            => 'deleteLanguagePack',
              'language_pack_id' => language_pack_id)
  end
  
  # Deletes messages.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_ids [Array<Integer>] Identifiers of the messages to be deleted.
  # @param revoke [Boolean] Pass true to try to delete outgoing messages for all chat members (may fail if messages are
  #   too old).
  #   Always true for supergroups, channels and secret chats.
  # @return [Ok]
  def delete_messages(chat_id, message_ids, revoke = false)
    broadcast('@type'       => 'deleteMessages',
              'chat_id'     => chat_id,
              'message_ids' => message_ids,
              'revoke'      => revoke)
  end
  
  # Deletes a Telegram Passport element.
  #
  # @param type [PassportElementType] Element type.
  # @return [Ok]
  def delete_passport_element(type)
    broadcast('@type' => 'deletePassportElement',
              'type'  => type)
  end
  
  # Deletes a profile photo.
  # If something changes, {TD::Types::Update::User} will be sent.
  #
  # @param profile_photo_id [Integer] Identifier of the profile photo to delete.
  # @return [Ok]
  def delete_profile_photo(profile_photo_id)
    broadcast('@type'            => 'deleteProfilePhoto',
              'profile_photo_id' => profile_photo_id)
  end
  
  # Deletes saved credentials for all payment provider bots.
  #
  # @return [Ok]
  def delete_saved_credentials
    broadcast('@type' => 'deleteSavedCredentials')
  end
  
  # Deletes saved order info.
  #
  # @return [Ok]
  def delete_saved_order_info
    broadcast('@type' => 'deleteSavedOrderInfo')
  end
  
  # Deletes a supergroup or channel along with all messages in the corresponding chat.
  # This will release the supergroup or channel username and remove all members; requires creator privileges in the
  #   supergroup or channel.
  # Chats with more than 1000 members can't be deleted using this method.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @return [Ok]
  def delete_supergroup(supergroup_id)
    broadcast('@type'         => 'deleteSupergroup',
              'supergroup_id' => supergroup_id)
  end
  
  # Closes the TDLib instance, destroying all local data without a proper logout.
  # The current user session will remain in the list of all active sessions.
  # All local data will be destroyed.
  # After the destruction completes {TD::Types::Update::AuthorizationState} with {TD::Types::AuthorizationState::Closed}
  #   will be sent.
  #
  # @return [Ok]
  def destroy
    broadcast('@type' => 'destroy')
  end
  
  # Disables the currently enabled proxy.
  # Can be called before authorization.
  #
  # @return [Ok]
  def disable_proxy
    broadcast('@type' => 'disableProxy')
  end
  
  # Discards a call.
  #
  # @param call_id [Integer] Call identifier.
  # @param is_disconnected [Boolean] True, if the user was disconnected.
  # @param duration [Integer] The call duration, in seconds.
  # @param connection_id [Integer] Identifier of the connection used during the call.
  # @return [Ok]
  def discard_call(call_id, duration, connection_id, is_disconnected: false)
    broadcast('@type'           => 'discardCall',
              'call_id'         => call_id,
              'is_disconnected' => is_disconnected,
              'duration'        => duration,
              'connection_id'   => connection_id)
  end
  
  # Disconnects all websites from the current user's Telegram account.
  #
  # @return [Ok]
  def disconnect_all_websites
    broadcast('@type' => 'disconnectAllWebsites')
  end
  
  # Disconnects website from the current user's Telegram account.
  #
  # @param website_id [Integer] Website identifier.
  # @return [Ok]
  def disconnect_website(website_id)
    broadcast('@type'      => 'disconnectWebsite',
              'website_id' => website_id)
  end
  
  # Asynchronously downloads a file from the cloud.
  # {TD::Types::Update::File} will be used to notify about the download progress and successful completion of the
  #   download.
  # Returns file state just after the download has been started.
  #
  # @param file_id [Integer] Identifier of the file to download.
  # @param priority [Integer] Priority of the download (1-32).
  #   The higher the priority, the earlier the file will be downloaded.
  #   If the priorities of two files are equal, then the last one for which {#download_file} was called will be
  #     downloaded first.
  # @return [File]
  def download_file(file_id, priority = 1)
    broadcast('@type'    => 'downloadFile',
              'file_id'  => file_id,
              'priority' => priority)
  end
  
  # Edits information about a custom language pack in the current localization target.
  #
  # @param info [LanguagePackInfo] New information about the custom language pack.
  # @return [Ok]
  def edit_custom_language_pack_info(info)
    broadcast('@type' => 'editCustomLanguagePackInfo',
              'info'  => info)
  end
  
  # Edits the caption of an inline message sent via a bot; for bots only.
  #
  # @param inline_message_id [String] Inline message identifier.
  # @param reply_markup [ReplyMarkup] The new message reply markup.
  # @param caption [FormattedText] New message content caption; 0-GetOption("message_caption_length_max") characters.
  # @return [Ok]
  def edit_inline_message_caption(inline_message_id, reply_markup, caption)
    broadcast('@type'             => 'editInlineMessageCaption',
              'inline_message_id' => inline_message_id,
              'reply_markup'      => reply_markup,
              'caption'           => caption)
  end
  
  # Edits the content of a live location in an inline message sent via a bot; for bots only.
  #
  # @param inline_message_id [String] Inline message identifier.
  # @param reply_markup [ReplyMarkup] The new message reply markup.
  # @param location [Location] New location content of the message; may be null.
  #   Pass null to stop sharing the live location.
  # @return [Ok]
  def edit_inline_message_live_location(inline_message_id, reply_markup, location = nil)
    broadcast('@type'             => 'editInlineMessageLiveLocation',
              'inline_message_id' => inline_message_id,
              'reply_markup'      => reply_markup,
              'location'          => location)
  end
  
  # Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message
  #   sent via a bot; for bots only.
  #
  # @param inline_message_id [String] Inline message identifier.
  # @param reply_markup [ReplyMarkup] The new message reply markup; for bots only.
  # @param input_message_content [InputMessageAnimation, InputMessageAudio, InputMessageDocument, InputMessagePhoto,
  #   InputMessageVideo] New content of the message.
  # @return [Ok]
  def edit_inline_message_media(inline_message_id, input_message_content, reply_markup: nil)
    broadcast('@type'                 => 'editInlineMessageMedia',
              'inline_message_id'     => inline_message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits the reply markup of an inline message sent via a bot; for bots only.
  #
  # @param inline_message_id [String] Inline message identifier.
  # @param reply_markup [ReplyMarkup] The new message reply markup.
  # @return [Ok]
  def edit_inline_message_reply_markup(inline_message_id, reply_markup)
    broadcast('@type'             => 'editInlineMessageReplyMarkup',
              'inline_message_id' => inline_message_id,
              'reply_markup'      => reply_markup)
  end
  
  # Edits the text of an inline text or game message sent via a bot; for bots only.
  #
  # @param inline_message_id [String] Inline message identifier.
  # @param reply_markup [ReplyMarkup] The new message reply markup.
  # @param input_message_content [InputMessageText] New text content of the message.
  # @return [Ok]
  def edit_inline_message_text(inline_message_id, input_message_content, reply_markup)
    broadcast('@type'                 => 'editInlineMessageText',
              'inline_message_id'     => inline_message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits the message content caption.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [ReplyMarkup] The new message reply markup; for bots only.
  # @param caption [FormattedText] New message content caption; 0-GetOption("message_caption_length_max") characters.
  # @return [Message] the edited message after the edit is completed on the server side.
  def edit_message_caption(chat_id, message_id, caption, reply_markup: nil)
    broadcast('@type'        => 'editMessageCaption',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'reply_markup' => reply_markup,
              'caption'      => caption)
  end
  
  # Edits the message content of a live location.
  # Messages can be edited for a limited period of time specified in the live location.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [ReplyMarkup] The new message reply markup; for bots only.
  # @param location [Location] New location content of the message; may be null.
  #   Pass null to stop sharing the live location.
  # @return [Message] the edited message after the edit is completed on the server side.
  def edit_message_live_location(chat_id, message_id, location = nil, reply_markup: nil)
    broadcast('@type'        => 'editMessageLiveLocation',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'reply_markup' => reply_markup,
              'location'     => location)
  end
  
  # Edits the content of a message with an animation, an audio, a document, a photo or a video.
  # The media in the message can't be replaced if the message was set to self-destruct.
  # Media can't be replaced by self-destructing media.
  # Media in an album can be edited only to contain a photo or a video.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [ReplyMarkup] The new message reply markup; for bots only.
  # @param input_message_content [InputMessageAnimation, InputMessageAudio, InputMessageDocument, InputMessagePhoto,
  #   InputMessageVideo] New content of the message.
  # @return [Message] the edited message after the edit is completed on the server side.
  def edit_message_media(chat_id, message_id, input_message_content, reply_markup: nil)
    broadcast('@type'                 => 'editMessageMedia',
              'chat_id'               => chat_id,
              'message_id'            => message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits the message reply markup; for bots only.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [ReplyMarkup] The new message reply markup.
  # @return [Message] the edited message after the edit is completed on the server side.
  def edit_message_reply_markup(chat_id, message_id, reply_markup)
    broadcast('@type'        => 'editMessageReplyMarkup',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'reply_markup' => reply_markup)
  end
  
  # Edits the text of a message (or a text of a game message).
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [ReplyMarkup] The new message reply markup; for bots only.
  # @param input_message_content [InputMessageContent] New text content of the message.
  #   Should be of type InputMessageText.
  # @return [Message] the edited message after the edit is completed on the server side.
  def edit_message_text(chat_id, message_id, input_message_content, reply_markup: nil)
    broadcast('@type'                 => 'editMessageText',
              'chat_id'               => chat_id,
              'message_id'            => message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits an existing proxy server for network requests.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @param server [String] Proxy server IP address.
  # @param port [Integer] Proxy server port.
  # @param enable [Boolean] True, if the proxy should be enabled.
  # @param type [ProxyType] Proxy type.
  # @return [Proxy]
  def edit_proxy(proxy_id, server, port, type, enable = false)
    broadcast('@type'    => 'editProxy',
              'proxy_id' => proxy_id,
              'server'   => server,
              'port'     => port,
              'enable'   => enable,
              'type'     => type)
  end
  
  # Enables a proxy.
  # Only one proxy can be enabled at a time.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @return [Ok]
  def enable_proxy(proxy_id)
    broadcast('@type'    => 'enableProxy',
              'proxy_id' => proxy_id)
  end
  
  # Finishes the file generation.
  #
  # @param generation_id [Integer] The identifier of the generation process.
  # @param error [Error] If set, means that file generation has failed and should be terminated.
  # @return [Ok]
  def finish_file_generation(generation_id, error: nil)
    broadcast('@type'         => 'finishFileGeneration',
              'generation_id' => generation_id,
              'error'         => error)
  end
  
  # Forwards previously sent messages.
  # If a message can't be forwarded, null will be returned instead of the message.
  #
  # @param chat_id [Integer] Identifier of the chat to which to forward messages.
  # @param from_chat_id [Integer] Identifier of the chat from which to forward messages.
  # @param message_ids [Array<Integer>] Identifiers of the messages to forward.
  # @param disable_notification [Boolean] Pass true to disable notification for the message, doesn't work if messages
  #   are forwarded to a secret chat.
  # @param from_background [Boolean] Pass true if the message is sent from the background.
  # @param as_album [Boolean] True, if the messages should be grouped into an album after forwarding.
  #   For this to work, no more than 10 messages may be forwarded, and all of them must be photo or video messages.
  # @return [Messages] the forwarded messages in the same order as the message identifiers passed in message_ids.
  def forward_messages(chat_id, from_chat_id, message_ids,
                       disable_notification: false, from_background: false, as_album: false)
    broadcast('@type'                => 'forwardMessages',
              'chat_id'              => chat_id,
              'from_chat_id'         => from_chat_id,
              'message_ids'          => message_ids,
              'disable_notification' => disable_notification,
              'from_background'      => from_background,
              'as_album'             => as_album)
  end
  
  # Generates a new invite link for a chat; the previously generated link is revoked.
  # Available for basic groups, supergroups, and channels.
  # In basic groups this can be called only by the group's creator; in supergroups and channels this requires
  #   appropriate administrator rights.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [ChatInviteLink]
  def generate_chat_invite_link(chat_id)
    broadcast('@type'   => 'generateChatInviteLink',
              'chat_id' => chat_id)
  end
  
  # Returns the period of inactivity after which the account of the current user will automatically be deleted.
  #
  # @return [AccountTtl]
  def get_account_ttl
    broadcast('@type' => 'getAccountTtl')
  end
  
  # Returns all active live locations that should be updated by the client.
  # The list is persistent across application restarts only if the message database is used.
  #
  # @return [Messages]
  def get_active_live_location_messages
    broadcast('@type' => 'getActiveLiveLocationMessages')
  end
  
  # Returns all active sessions of the current user.
  #
  # @return [Sessions]
  def get_active_sessions
    broadcast('@type' => 'getActiveSessions')
  end
  
  # Returns all available Telegram Passport elements.
  #
  # @param password [String] Password of the current user.
  # @return [PassportElements]
  def get_all_passport_elements(password)
    broadcast('@type'    => 'getAllPassportElements',
              'password' => password)
  end
  
  # Returns a list of archived sticker sets.
  #
  # @param is_masks [Boolean] Pass true to return mask stickers sets; pass false to return ordinary sticker sets.
  # @param offset_sticker_set_id [Integer] Identifier of the sticker set from which to return the result.
  # @param limit [Integer] Maximum number of sticker sets to return.
  # @return [StickerSets]
  def get_archived_sticker_sets(offset_sticker_set_id, limit = 100, is_masks: false)
    broadcast('@type'                 => 'getArchivedStickerSets',
              'is_masks'              => is_masks,
              'offset_sticker_set_id' => offset_sticker_set_id,
              'limit'                 => limit)
  end
  
  # Returns a list of sticker sets attached to a file.
  # Currently only photos and videos can have attached sticker sets.
  #
  # @param file_id [Integer] File identifier.
  # @return [StickerSets]
  def get_attached_sticker_sets(file_id)
    broadcast('@type'   => 'getAttachedStickerSets',
              'file_id' => file_id)
  end
  
  # Returns the current authorization state; this is an offline request.
  # For informational purposes only.
  # Use {TD::Types::Update::AuthorizationState} instead to maintain the current authorization state.
  #
  # @return [AuthorizationState]
  def get_authorization_state
    broadcast('@type' => 'getAuthorizationState')
  end
  
  # Returns information about a basic group by its identifier.
  # This is an offline request if the current user is not a bot.
  #
  # @param basic_group_id [Integer] Basic group identifier.
  # @return [BasicGroup]
  def get_basic_group(basic_group_id)
    broadcast('@type'          => 'getBasicGroup',
              'basic_group_id' => basic_group_id)
  end
  
  # Returns full information about a basic group by its identifier.
  #
  # @param basic_group_id [Integer] Basic group identifier.
  # @return [BasicGroupFullInfo]
  def get_basic_group_full_info(basic_group_id)
    broadcast('@type'          => 'getBasicGroupFullInfo',
              'basic_group_id' => basic_group_id)
  end
  
  # Returns users that were blocked by the current user.
  #
  # @param offset [Integer] Number of users to skip in the result; must be non-negative.
  # @param limit [Integer] Maximum number of users to return; up to 100.
  # @return [Users]
  def get_blocked_users(offset, limit = 100)
    broadcast('@type'  => 'getBlockedUsers',
              'offset' => offset,
              'limit'  => limit)
  end
  
  # Sends a callback query to a bot and returns an answer.
  # Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  #
  # @param chat_id [Integer] Identifier of the chat with the message.
  # @param message_id [Integer] Identifier of the message from which the query originated.
  # @param payload [CallbackQueryPayload] Query payload.
  # @return [CallbackQueryAnswer]
  def get_callback_query_answer(chat_id, message_id, payload)
    broadcast('@type'      => 'getCallbackQueryAnswer',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'payload'    => payload)
  end
  
  # Returns information about a chat by its identifier, this is an offline request if the current user is not a bot.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [Chat]
  def get_chat(chat_id)
    broadcast('@type'   => 'getChat',
              'chat_id' => chat_id)
  end
  
  # Returns a list of users who are administrators of the chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [Users]
  def get_chat_administrators(chat_id)
    broadcast('@type'   => 'getChatAdministrators',
              'chat_id' => chat_id)
  end
  
  # Returns a list of service actions taken by chat members and administrators in the last 48 hours.
  # Available only in supergroups and channels.
  # Requires administrator rights.
  # Returns results in reverse chronological order (i.e., in order of decreasing event_id).
  #
  # @param chat_id [Integer] Chat identifier.
  # @param query [String] Search query by which to filter events.
  # @param from_event_id [Integer] Identifier of an event from which to return results.
  #   Use 0 to get results from the latest events.
  # @param limit [Integer] Maximum number of events to return; up to 100.
  # @param filters [ChatEventLogFilters] The types of events to return.
  #   By default, all types will be returned.
  # @param user_ids [Array<Integer>] User identifiers by which to filter events.
  #   By default, events relating to all users will be returned.
  # @return [ChatEvents]
  def get_chat_event_log(chat_id, limit = 100, query: nil, from_event_id: 0, filters: nil, user_ids: nil)
    broadcast('@type'         => 'getChatEventLog',
              'chat_id'       => chat_id,
              'query'         => query,
              'from_event_id' => from_event_id,
              'limit'         => limit,
              'filters'       => filters,
              'user_ids'      => user_ids)
  end
  
  # Returns messages in a chat.
  # The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).
  # For optimal performance the number of returned messages is chosen by the library.
  # This is an offline request if only_local is true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param from_message_id [Integer] Identifier of the message starting from which history must be fetched; use 0 to
  #   get results from the last message.
  # @param offset [Integer] Specify 0 to get results from exactly the from_message_id or a negative offset to get the
  #   specified message and some newer messages.
  # @param limit [Integer] The maximum number of messages to be returned; must be positive and can't be greater than
  #   100.
  #   If the offset is negative, the limit must be greater than -offset.
  #   Fewer messages may be returned than specified by the limit, even if the end of the message history has not been
  #   reached.
  # @param only_local [Boolean] If true, returns only messages that are available locally without sending network
  #   requests.
  # @return [Messages]
  def get_chat_history(chat_id, from_message_id, offset = 0, limit = 100, only_local: false)
    broadcast('@type'           => 'getChatHistory',
              'chat_id'         => chat_id,
              'from_message_id' => from_message_id,
              'offset'          => offset,
              'limit'           => limit,
              'only_local'      => only_local)
  end
  
  # Returns information about a single member of a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_id [Integer] User identifier.
  # @return [ChatMember]
  def get_chat_member(chat_id, user_id)
    broadcast('@type'   => 'getChatMember',
              'chat_id' => chat_id,
              'user_id' => user_id)
  end
  
  # Returns the last message sent in a chat no later than the specified date.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param date [Integer] Point in time (Unix timestamp) relative to which to search for messages.
  # @return [Message]
  def get_chat_message_by_date(chat_id, date)
    broadcast('@type'   => 'getChatMessageByDate',
              'chat_id' => chat_id,
              'date'    => date)
  end
  
  # Returns approximate number of messages of the specified type in the chat.
  #
  # @param chat_id [Integer] Identifier of the chat in which to count messages.
  # @param filter [SearchMessagesFilter] Filter for message content; {TD::Types::SearchMessagesFilter::Empty} is
  #   unsupported in this function.
  # @param return_local [Boolean] If true, returns count that is available locally without sending network requests,
  #   returning -1 if the number of messages is unknown.
  # @return [Count]
  def get_chat_message_count(chat_id, filter = nil, return_local: false)
    broadcast('@type'        => 'getChatMessageCount',
              'chat_id'      => chat_id,
              'filter'       => filter,
              'return_local' => return_local)
  end
  
  # Returns information about a pinned chat message.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @return [Message]
  def get_chat_pinned_message(chat_id)
    broadcast('@type'   => 'getChatPinnedMessage',
              'chat_id' => chat_id)
  end
  
  # Returns information on whether the current chat can be reported as spam.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [ChatReportSpamState]
  def get_chat_report_spam_state(chat_id)
    broadcast('@type'   => 'getChatReportSpamState',
              'chat_id' => chat_id)
  end
  
  # Returns an ordered list of chats.
  # Chats are sorted by the pair (order, chat_id) in decreasing order.
  # (For example, to get a list of chats from the beginning, the offset_order should be equal to 2^63 - 1).
  # For optimal performance the number of returned chats is chosen by the library.
  #
  # @param offset_order [Integer] Chat order to return chats from.
  # @param offset_chat_id [Integer] Chat identifier to return chats from.
  # @param limit [Integer] The maximum number of chats to be returned.
  #   It is possible that fewer chats than the limit are returned even if the end of the list is not reached.
  # @return [Chats]
  def get_chats(offset_chat_id = 0, limit = 100, offset_order: 9223372036854775807)
    broadcast('@type'          => 'getChats',
              'offset_order'   => offset_order,
              'offset_chat_id' => offset_chat_id,
              'limit'          => limit)
  end
  
  # Returns all website where the current user used Telegram to log in.
  #
  # @return [ConnectedWebsites]
  def get_connected_websites
    broadcast('@type' => 'getConnectedWebsites')
  end
  
  # Returns all user contacts.
  #
  # @return [Users]
  def get_contacts
    broadcast('@type' => 'getContacts')
  end
  
  # Uses current user IP to found his country.
  # Can be called before authorization.
  #
  # @return [Text] two-letter ISO 3166-1 alpha-2 country code.
  def get_country_code
    broadcast('@type' => 'getCountryCode')
  end
  
  # Returns a list of public chats created by the user.
  #
  # @return [Chats]
  def get_created_public_chats
    broadcast('@type' => 'getCreatedPublicChats')
  end
  
  # Returns information about a tg:// deep link.
  # Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing.
  # Returns a 404 error for unknown links.
  # Can be called before authorization.
  #
  # @param link [String] The link.
  # @return [DeepLinkInfo]
  def get_deep_link_info(link)
    broadcast('@type' => 'getDeepLinkInfo',
              'link'  => link)
  end
  
  # Returns favorite stickers.
  #
  # @return [Stickers]
  def get_favorite_stickers
    broadcast('@type' => 'getFavoriteStickers')
  end
  
  # Returns information about a file; this is an offline request.
  #
  # @param file_id [Integer] Identifier of the file to get.
  # @return [File]
  def get_file(file_id)
    broadcast('@type'   => 'getFile',
              'file_id' => file_id)
  end
  
  # Returns the extension of a file, guessed by its MIME type.
  # Returns an empty string on failure.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # @param mime_type [String] The MIME type of the file.
  # @return [Text]
  def get_file_extension(mime_type)
    broadcast('@type'     => 'getFileExtension',
              'mime_type' => mime_type)
  end
  
  # Returns the MIME type of a file, guessed by its extension.
  # Returns an empty string on failure.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # @param file_name [String] The name of the file or path to the file.
  # @return [Text]
  def get_file_mime_type(file_name)
    broadcast('@type'     => 'getFileMimeType',
              'file_name' => file_name)
  end
  
  # Returns the high scores for a game and some part of the high score table in the range of the specified user; for
  #   bots only.
  #
  # @param chat_id [Integer] The chat that contains the message with the game.
  # @param message_id [Integer] Identifier of the message.
  # @param user_id [Integer] User identifier.
  # @return [GameHighScores]
  def get_game_high_scores(chat_id, message_id, user_id)
    broadcast('@type'      => 'getGameHighScores',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'user_id'    => user_id)
  end
  
  # Returns a list of common chats with a given user.
  # Chats are sorted by their type and creation date.
  #
  # @param user_id [Integer] User identifier.
  # @param offset_chat_id [Integer] Chat identifier starting from which to return chats; use 0 for the first request.
  # @param limit [Integer] Maximum number of chats to be returned; up to 100.
  # @return [Chats]
  def get_groups_in_common(user_id, offset_chat_id = 0, limit = 100)
    broadcast('@type'          => 'getGroupsInCommon',
              'user_id'        => user_id,
              'offset_chat_id' => offset_chat_id,
              'limit'          => limit)
  end
  
  # Returns the total number of imported contacts.
  #
  # @return [Count]
  def get_imported_contact_count
    broadcast('@type' => 'getImportedContactCount')
  end
  
  # Returns game high scores and some part of the high score table in the range of the specified user; for bots only.
  #
  # @param inline_message_id [String] Inline message identifier.
  # @param user_id [Integer] User identifier.
  # @return [GameHighScores]
  def get_inline_game_high_scores(inline_message_id, user_id)
    broadcast('@type'             => 'getInlineGameHighScores',
              'inline_message_id' => inline_message_id,
              'user_id'           => user_id)
  end
  
  # Sends an inline query to a bot and returns its results.
  # Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  #
  # @param bot_user_id [Integer] The identifier of the target bot.
  # @param chat_id [Integer] Identifier of the chat, where the query was sent.
  # @param user_location [Location] Location of the user, only if needed.
  # @param query [String] Text of the query.
  # @param offset [String] Offset of the first entry to return.
  # @return [InlineQueryResults]
  def get_inline_query_results(bot_user_id, chat_id, query, offset = 0, user_location: nil)
    broadcast('@type'         => 'getInlineQueryResults',
              'bot_user_id'   => bot_user_id,
              'chat_id'       => chat_id,
              'user_location' => user_location,
              'query'         => query,
              'offset'        => offset)
  end
  
  # Returns a list of installed sticker sets.
  #
  # @param is_masks [Boolean] Pass true to return mask sticker sets; pass false to return ordinary sticker sets.
  # @return [StickerSets]
  def get_installed_sticker_sets(is_masks = false)
    broadcast('@type'    => 'getInstalledStickerSets',
              'is_masks' => is_masks)
  end
  
  # Returns the default text for invitation messages to be used as a placeholder when the current user invites friends
  #   to Telegram.
  #
  # @return [Text]
  def get_invite_text
    broadcast('@type' => 'getInviteText')
  end
  
  # Returns a string stored in the local database from the specified localization target and language pack by its key.
  # Returns a 404 error if the string is not found.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # @param language_pack_database_path [String] Path to the language pack database in which strings are stored.
  # @param localization_target [String] Localization target to which the language pack belongs.
  # @param language_pack_id [String] Language pack identifier.
  # @param key [String] Language pack key of the string to be returned.
  # @return [LanguagePackStringValue]
  def get_language_pack_string(language_pack_database_path, localization_target, language_pack_id, key)
    broadcast('@type'                       => 'getLanguagePackString',
              'language_pack_database_path' => language_pack_database_path,
              'localization_target'         => localization_target,
              'language_pack_id'            => language_pack_id,
              'key'                         => key)
  end
  
  # Returns strings from a language pack in the current localization target by their keys.
  #
  # @param language_pack_id [String] Language pack identifier of the strings to be returned.
  # @param keys [Array<String>] Language pack keys of the strings to be returned; leave empty to request all available
  #   strings.
  # @return [LanguagePackStrings]
  def get_language_pack_strings(language_pack_id, keys)
    broadcast('@type'            => 'getLanguagePackStrings',
              'language_pack_id' => language_pack_id,
              'keys'             => keys)
  end
  
  # Returns information about the current localization target.
  # This is an offline request if only_local is true.
  #
  # @param only_local [Boolean] If true, returns only locally available information without sending network requests.
  # @return [LocalizationTargetInfo]
  def get_localization_target_info(only_local = false)
    broadcast('@type'      => 'getLocalizationTargetInfo',
              'only_local' => only_local)
  end
  
  # Returns information about a file with a map thumbnail in PNG format.
  # Only map thumbnail files with size less than 1MB can be downloaded.
  #
  # @param location [Location] Location of the map center.
  # @param zoom [Integer] Map zoom level; 13-20.
  # @param width [Integer] Map width in pixels before applying scale; 16-1024.
  # @param height [Integer] Map height in pixels before applying scale; 16-1024.
  # @param scale [Integer] Map scale; 1-3.
  # @param chat_id [Integer] Identifier of a chat, in which the thumbnail will be shown.
  #   Use 0 if unknown.
  # @return [File]
  def get_map_thumbnail_file(location, zoom = 13, width = 1024, height = 1024, scale = 1, chat_id: 0)
    broadcast('@type'    => 'getMapThumbnailFile',
              'location' => location,
              'zoom'     => zoom,
              'width'    => width,
              'height'   => height,
              'scale'    => scale,
              'chat_id'  => chat_id)
  end
  
  # Returns the current user.
  #
  # @return [User]
  def get_me
    broadcast('@type' => 'getMe')
  end
  
  # Returns information about a message.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @param message_id [Integer] Identifier of the message to get.
  # @return [Message]
  def get_message(chat_id, message_id)
    broadcast('@type'      => 'getMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns information about messages.
  # If a message is not found, returns null on the corresponding position of the result.
  #
  # @param chat_id [Integer] Identifier of the chat the messages belong to.
  # @param message_ids [Array<Integer>] Identifiers of the messages to get.
  # @return [Messages]
  def get_messages(chat_id, message_ids)
    broadcast('@type'       => 'getMessages',
              'chat_id'     => chat_id,
              'message_ids' => message_ids)
  end
  
  # Returns network data usage statistics.
  # Can be called before authorization.
  #
  # @param only_current [Boolean] If true, returns only data for the current library launch.
  # @return [NetworkStatistics]
  def get_network_statistics(only_current = false)
    broadcast('@type'        => 'getNetworkStatistics',
              'only_current' => only_current)
  end
  
  # Returns the value of an option by its name.
  # Can be called before authorization.
  #
  # @param name [String] The name of the option.
  # @see https://core.telegram.org/tdlib/options List of available options 
  # @return [OptionValue]
  def get_option(name)
    broadcast('@type' => 'getOption',
              'name'  => name)
  end
  
  # Returns a Telegram Passport authorization form for sharing data with a service.
  #
  # @param bot_user_id [Integer] User identifier of the service's bot.
  # @param scope [String] Telegram Passport element types requested by the service.
  # @param public_key [String] Service's public_key.
  # @param nonce [String] Authorization form nonce provided by the service.
  # @param password [String] Password of the current user.
  # @return [PassportAuthorizationForm]
  def get_passport_authorization_form(bot_user_id, scope, public_key, nonce, password)
    broadcast('@type'       => 'getPassportAuthorizationForm',
              'bot_user_id' => bot_user_id,
              'scope'       => scope,
              'public_key'  => public_key,
              'nonce'       => nonce,
              'password'    => password)
  end
  
  # Returns one of the available Telegram Passport elements.
  #
  # @param type [PassportElementType] Telegram Passport element type.
  # @param password [String] Password of the current user.
  # @return [PassportElement]
  def get_passport_element(type, password)
    broadcast('@type'    => 'getPassportElement',
              'type'     => type,
              'password' => password)
  end
  
  # Returns the current state of 2-step verification.
  #
  # @return [PasswordState]
  def get_password_state
    broadcast('@type' => 'getPasswordState')
  end
  
  # Returns an invoice payment form.
  # This method should be called when the user presses {TD::Types::InlineKeyboardButton::Buy}.
  #
  # @param chat_id [Integer] Chat identifier of the Invoice message.
  # @param message_id [Integer] Message identifier.
  # @return [PaymentForm]
  def get_payment_form(chat_id, message_id)
    broadcast('@type'      => 'getPaymentForm',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns information about a successful payment.
  #
  # @param chat_id [Integer] Chat identifier of the PaymentSuccessful message.
  # @param message_id [Integer] Message identifier.
  # @return [PaymentReceipt]
  def get_payment_receipt(chat_id, message_id)
    broadcast('@type'      => 'getPaymentReceipt',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns an IETF language tag of the language preferred in the country, which should be used to fill native fields
  #   in Telegram Passport personal details.
  # Returns a 404 error if unknown.
  #
  # @param country_code [String] A two-letter ISO 3166-1 alpha-2 country code.
  # @return [Text]
  def get_preferred_country_language(country_code)
    broadcast('@type'        => 'getPreferredCountryLanguage',
              'country_code' => country_code)
  end
  
  # Returns list of proxies that are currently set up.
  # Can be called before authorization.
  #
  # @return [Proxies]
  def get_proxies
    broadcast('@type' => 'getProxies')
  end
  
  # Returns an HTTPS link, which can be used to add a proxy.
  # Available only for SOCKS5 and MTProto proxies.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @return [Text]
  def get_proxy_link(proxy_id)
    broadcast('@type'    => 'getProxyLink',
              'proxy_id' => proxy_id)
  end
  
  # Returns a public HTTPS link to a message.
  # Available only for messages in public supergroups and channels.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param for_album [Boolean] Pass true if a link for a whole media album should be returned.
  # @return [PublicMessageLink]
  def get_public_message_link(chat_id, message_id, for_album: false)
    broadcast('@type'      => 'getPublicMessageLink',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'for_album'  => for_album)
  end
  
  # Returns up to 20 recently used inline bots in the order of their last usage.
  #
  # @return [Users]
  def get_recent_inline_bots
    broadcast('@type' => 'getRecentInlineBots')
  end
  
  # Returns a list of recently used stickers.
  #
  # @param is_attached [Boolean] Pass true to return stickers and masks that were recently attached to photos or video
  #   files; pass false to return recently sent stickers.
  # @return [Stickers]
  def get_recent_stickers(is_attached = false)
    broadcast('@type'       => 'getRecentStickers',
              'is_attached' => is_attached)
  end
  
  # Returns t.me URLs recently visited by a newly registered user.
  #
  # @param referrer [String] Google Play referrer to identify the user.
  # @return [TMeUrls]
  def get_recently_visited_t_me_urls(referrer)
    broadcast('@type'    => 'getRecentlyVisitedTMeUrls',
              'referrer' => referrer)
  end
  
  # Returns a recovery email address that was previously set up.
  # This method can be used to verify a password provided by the user.
  #
  # @param password [String] The password for the current user.
  # @return [RecoveryEmailAddress]
  def get_recovery_email_address(password)
    broadcast('@type'    => 'getRecoveryEmailAddress',
              'password' => password)
  end
  
  # Returns information about a file by its remote ID; this is an offline request.
  # Can be used to register a URL as a file for further uploading, or sending as a message.
  #
  # @param remote_file_id [String] Remote identifier of the file to get.
  # @param file_type [FileType] File type, if known.
  # @return [File]
  def get_remote_file(remote_file_id, file_type = nil)
    broadcast('@type'          => 'getRemoteFile',
              'remote_file_id' => remote_file_id,
              'file_type'      => file_type)
  end
  
  # Returns information about a message that is replied by given message.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @param message_id [Integer] Identifier of the message reply to which get.
  # @return [Message]
  def get_replied_message(chat_id, message_id)
    broadcast('@type'      => 'getRepliedMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns saved animations.
  #
  # @return [Animations]
  def get_saved_animations
    broadcast('@type' => 'getSavedAnimations')
  end
  
  # Returns saved order info, if any.
  #
  # @return [OrderInfo]
  def get_saved_order_info
    broadcast('@type' => 'getSavedOrderInfo')
  end
  
  # Returns the notification settings for chats of a given type.
  #
  # @param scope [NotificationSettingsScope] Types of chats for which to return the notification settings information.
  # @return [ScopeNotificationSettings]
  def get_scope_notification_settings(scope)
    broadcast('@type' => 'getScopeNotificationSettings',
              'scope' => scope)
  end
  
  # Returns information about a secret chat by its identifier.
  # This is an offline request.
  #
  # @param secret_chat_id [Integer] Secret chat identifier.
  # @return [SecretChat]
  def get_secret_chat(secret_chat_id)
    broadcast('@type'          => 'getSecretChat',
              'secret_chat_id' => secret_chat_id)
  end
  
  # Returns emoji corresponding to a sticker.
  #
  # @param sticker [InputFile] Sticker file identifier.
  # @return [StickerEmojis]
  def get_sticker_emojis(sticker)
    broadcast('@type'   => 'getStickerEmojis',
              'sticker' => sticker)
  end
  
  # Returns information about a sticker set by its identifier.
  #
  # @param set_id [Integer] Identifier of the sticker set.
  # @return [StickerSet]
  def get_sticker_set(set_id)
    broadcast('@type'  => 'getStickerSet',
              'set_id' => set_id)
  end
  
  # Returns stickers from the installed sticker sets that correspond to a given emoji.
  # If the emoji is not empty, favorite and recently used stickers may also be returned.
  #
  # @param emoji [String] String representation of emoji.
  #   If empty, returns all known installed stickers.
  # @param limit [Integer] Maximum number of stickers to be returned.
  # @return [Stickers]
  def get_stickers(emoji, limit = 100)
    broadcast('@type' => 'getStickers',
              'emoji' => emoji,
              'limit' => limit)
  end
  
  # Returns storage usage statistics.
  #
  # @param chat_limit [Integer] Maximum number of chats with the largest storage usage for which separate statistics
  #   should be returned.
  #   All other chats will be grouped in entries with chat_id == 0.
  #   If the chat info database is not used, the chat_limit is ignored and is always set to 0.
  # @return [StorageStatistics]
  def get_storage_statistics(chat_limit)
    broadcast('@type'      => 'getStorageStatistics',
              'chat_limit' => chat_limit)
  end
  
  # Quickly returns approximate storage usage statistics.
  #
  # @return [StorageStatisticsFast]
  def get_storage_statistics_fast
    broadcast('@type' => 'getStorageStatisticsFast')
  end
  
  # Returns information about a supergroup or channel by its identifier.
  # This is an offline request if the current user is not a bot.
  #
  # @param supergroup_id [Integer] Supergroup or channel identifier.
  # @return [Supergroup]
  def get_supergroup(supergroup_id)
    broadcast('@type'         => 'getSupergroup',
              'supergroup_id' => supergroup_id)
  end
  
  # Returns full information about a supergroup or channel by its identifier, cached for up to 1 minute.
  #
  # @param supergroup_id [Integer] Supergroup or channel identifier.
  # @return [SupergroupFullInfo]
  def get_supergroup_full_info(supergroup_id)
    broadcast('@type'         => 'getSupergroupFullInfo',
              'supergroup_id' => supergroup_id)
  end
  
  # Returns information about members or banned users in a supergroup or channel.
  # Can be used only if SupergroupFullInfo.can_get_members == true; additionally, administrator privileges may be
  #   required for some filters.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param filter [SupergroupMembersFilter] The type of users to return.
  #   By default, {TD::Types::SupergroupMembersFilter::Recent}.
  # @param offset [Integer] Number of users to skip.
  # @param limit [Integer] The maximum number of users be returned; up to 200.
  # @return [ChatMembers]
  def get_supergroup_members(supergroup_id, filter, offset, limit)
    broadcast('@type'         => 'getSupergroupMembers',
              'supergroup_id' => supergroup_id,
              'filter'        => filter,
              'offset'        => offset,
              'limit'         => limit)
  end
  
  # Returns a user that can be contacted to get support.
  #
  # @return [User]
  def get_support_user
    broadcast('@type' => 'getSupportUser')
  end
  
  # Returns information about the current temporary password.
  #
  # @return [TemporaryPasswordState]
  def get_temporary_password_state
    broadcast('@type' => 'getTemporaryPasswordState')
  end
  
  # Returns all entities (mentions, hashtags, cashtags, bot commands, URLs, and email addresses) contained in the text.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # @param text [String] The text in which to look for entites.
  # @return [TextEntities]
  def get_text_entities(text)
    broadcast('@type' => 'getTextEntities',
              'text'  => text)
  end
  
  # Returns a list of frequently used chats.
  # Supported only if the chat info database is enabled.
  #
  # @param category [TopChatCategory] Category of chats to be returned.
  # @param limit [Integer] Maximum number of chats to be returned; up to 30.
  # @return [Chats]
  def get_top_chats(category, limit = 30)
    broadcast('@type'    => 'getTopChats',
              'category' => category,
              'limit'    => limit)
  end
  
  # Returns a list of trending sticker sets.
  #
  # @return [StickerSets]
  def get_trending_sticker_sets
    broadcast('@type' => 'getTrendingStickerSets')
  end
  
  # Returns information about a user by their identifier.
  # This is an offline request if the current user is not a bot.
  #
  # @param user_id [Integer] User identifier.
  # @return [User]
  def get_user(user_id)
    broadcast('@type'   => 'getUser',
              'user_id' => user_id)
  end
  
  # Returns full information about a user by their identifier.
  #
  # @param user_id [Integer] User identifier.
  # @return [UserFullInfo]
  def get_user_full_info(user_id)
    broadcast('@type'   => 'getUserFullInfo',
              'user_id' => user_id)
  end
  
  # Returns the current privacy settings.
  #
  # @param setting [UserPrivacySetting] The privacy setting.
  # @return [UserPrivacySettingRules]
  def get_user_privacy_setting_rules(setting)
    broadcast('@type'   => 'getUserPrivacySettingRules',
              'setting' => setting)
  end
  
  # Returns the profile photos of a user.
  # The result of this query may be outdated: some photos might have been deleted already.
  #
  # @param user_id [Integer] User identifier.
  # @param offset [Integer] The number of photos to skip; must be non-negative.
  # @param limit [Integer] Maximum number of photos to be returned; up to 100.
  # @return [UserProfilePhotos]
  def get_user_profile_photos(user_id, offset = 0, limit = 100)
    broadcast('@type'   => 'getUserProfilePhotos',
              'user_id' => user_id,
              'offset'  => offset,
              'limit'   => limit)
  end
  
  # Returns background wallpapers.
  #
  # @return [Wallpapers]
  def get_wallpapers
    broadcast('@type' => 'getWallpapers')
  end
  
  # Returns an instant view version of a web page if available.
  # Returns a 404 error if the web page has no instant view page.
  #
  # @param url [String] The web page URL.
  # @param force_full [Boolean] If true, the full instant view for the web page will be returned.
  # @return [WebPageInstantView]
  def get_web_page_instant_view(url, force_full = false)
    broadcast('@type'      => 'getWebPageInstantView',
              'url'        => url,
              'force_full' => force_full)
  end
  
  # Returns a web page preview by the text of the message.
  # Do not call this function too often.
  # Returns a 404 error if the web page has no preview.
  #
  # @param text [FormattedText] Message text with formatting.
  # @return [WebPage]
  def get_web_page_preview(text)
    broadcast('@type' => 'getWebPagePreview',
              'text'  => text)
  end
  
  # Adds new contacts or edits existing contacts; contacts' user identifiers are ignored.
  #
  # @param contacts [Array<Contact>] The list of contacts to import or edit, contact's vCard are ignored and are not
  #   imported.
  # @return [ImportedContacts]
  def import_contacts(contacts)
    broadcast('@type'    => 'importContacts',
              'contacts' => contacts)
  end
  
  # Adds current user as a new member to a chat.
  # Private and secret chats can't be joined using this method.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [Ok]
  def join_chat(chat_id)
    broadcast('@type'   => 'joinChat',
              'chat_id' => chat_id)
  end
  
  # Uses an invite link to add the current user to the chat if possible.
  # The new member will not be added until the chat state has been synchronized with the server.
  #
  # @param invite_link [String] Invite link to import; should begin with "https://t.me/joinchat/",
  #   "https://telegram.me/joinchat/", or "https://telegram.dog/joinchat/".
  # @return [Chat]
  def join_chat_by_invite_link(invite_link)
    broadcast('@type'       => 'joinChatByInviteLink',
              'invite_link' => invite_link)
  end
  
  # Removes current user from chat members.
  # Private and secret chats can't be left using this method.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [Ok]
  def leave_chat(chat_id)
    broadcast('@type'   => 'leaveChat',
              'chat_id' => chat_id)
  end
  
  # Closes the TDLib instance after a proper logout.
  # Requires an available network connection.
  # All local data will be destroyed.
  # After the logout completes, {TD::Types::Update::AuthorizationState} with {TD::Types::AuthorizationState::Closed}
  #   will be sent.
  #
  # @return [Ok]
  def log_out
    broadcast('@type' => 'logOut')
  end
  
  # This method should be called if the chat is opened by the user.
  # Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are
  #   received only for opened chats).
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [Ok]
  def open_chat(chat_id)
    broadcast('@type'   => 'openChat',
              'chat_id' => chat_id)
  end
  
  # This method should be called if the message content has been opened (e.g., the user has opened a photo, video,
  #   document, location or venue, or has listened to an audio file or voice note message).
  # An {TD::Types::Update::MessageContentOpened} will be generated if something has changed.
  #
  # @param chat_id [Integer] Chat identifier of the message.
  # @param message_id [Integer] Identifier of the message with the opened content.
  # @return [Ok]
  def open_message_content(chat_id, message_id)
    broadcast('@type'      => 'openMessageContent',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Optimizes storage usage, i.e. deletes some files and returns new storage usage statistics.
  # Secret thumbnails can't be deleted.
  #
  # @param size [Integer] Limit on the total size of files after deletion.
  #   Pass -1 to use the default limit.
  # @param ttl [Integer] Limit on the time that has passed since the last time a file was accessed (or creation time
  #   for some filesystems).
  #   Pass -1 to use the default limit.
  # @param count [Integer] Limit on the total count of files after deletion.
  #   Pass -1 to use the default limit.
  # @param immunity_delay [Integer] The amount of time after the creation of a file during which it can't be deleted,
  #   in seconds.
  #   Pass -1 to use the default value.
  # @param file_types [Array<FileType>] If not empty, only files with the given type(s) are considered.
  #   By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted.
  # @param chat_ids [Array<Integer>] If not empty, only files from the given chats are considered.
  #   Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos).
  # @param exclude_chat_ids [Array<Integer>] If not empty, files from the given chats are excluded.
  #   Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos).
  # @param chat_limit [Integer] Same as in {#get_storage_statistics}.
  #   Affects only returned statistics.
  # @return [StorageStatistics]
  def optimize_storage(size: -1, ttl: -1, count: -1, immunity_delay: -1,
                       file_types: nil, chat_ids: nil, exclude_chat_ids: nil, chat_limit: nil)
    broadcast('@type'            => 'optimizeStorage',
              'size'             => size,
              'ttl'              => ttl,
              'count'            => count,
              'immunity_delay'   => immunity_delay,
              'file_types'       => file_types,
              'chat_ids'         => chat_ids,
              'exclude_chat_ids' => exclude_chat_ids,
              'chat_limit'       => chat_limit)
  end
  
  # Parses Bold, Italic, Code, Pre, PreCode and TextUrl entities contained in the text.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # @param text [String] The text which should be parsed.
  # @param parse_mode [TextParseMode] Text parse mode.
  # @return [FormattedText]
  def parse_text_entities(text, parse_mode)
    broadcast('@type'      => 'parseTextEntities',
              'text'       => text,
              'parse_mode' => parse_mode)
  end
  
  # Pins a message in a supergroup or channel; requires appropriate administrator rights in the supergroup or channel.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param message_id [Integer] Identifier of the new pinned message.
  # @param disable_notification [Boolean] True, if there should be no notification about the pinned message.
  # @return [Ok]
  def pin_supergroup_message(supergroup_id, message_id, disable_notification: false)
    broadcast('@type'                => 'pinSupergroupMessage',
              'supergroup_id'        => supergroup_id,
              'message_id'           => message_id,
              'disable_notification' => disable_notification)
  end
  
  # Computes time needed to receive a response from a Telegram server through a proxy.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  #   Use 0 to ping a Telegram server without a proxy.
  # @return [Seconds]
  def ping_proxy(proxy_id)
    broadcast('@type'    => 'pingProxy',
              'proxy_id' => proxy_id)
  end
  
  # Handles a DC_UPDATE push service notification.
  # Can be called before authorization.
  #
  # @param dc [String] Value of the "dc" parameter of the notification.
  # @param addr [String] Value of the "addr" parameter of the notification.
  # @return [Ok]
  def process_dc_update(dc, addr)
    broadcast('@type' => 'processDcUpdate',
              'dc'    => dc,
              'addr'  => addr)
  end
  
  # Marks all mentions in a chat as read.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [Ok]
  def read_all_chat_mentions(chat_id)
    broadcast('@type'   => 'readAllChatMentions',
              'chat_id' => chat_id)
  end
  
  # Recovers the password with a password recovery code sent to an email address that was previously set up.
  # Works only when the current authorization state is {TD::Types::AuthorizationState::WaitPassword}.
  #
  # @param recovery_code [String] Recovery code to check.
  # @return [Ok]
  def recover_authentication_password(recovery_code)
    broadcast('@type'         => 'recoverAuthenticationPassword',
              'recovery_code' => recovery_code)
  end
  
  # Recovers the password using a recovery code sent to an email address that was previously set up.
  #
  # @param recovery_code [String] Recovery code to check.
  # @return [PasswordState]
  def recover_password(recovery_code)
    broadcast('@type'         => 'recoverPassword',
              'recovery_code' => recovery_code)
  end
  
  # Registers the currently used device for receiving push notifications.
  #
  # @param device_token [DeviceToken] Device token.
  # @param other_user_ids [Array<Integer>] List of at most 100 user identifiers of other users currently using the
  #   client.
  # @return [Ok]
  def register_device(device_token, other_user_ids = [])
    broadcast('@type'          => 'registerDevice',
              'device_token'   => device_token,
              'other_user_ids' => other_user_ids)
  end
  
  # Removes users from the contacts list.
  #
  # @param user_ids [Array<Integer>] Identifiers of users to be deleted.
  # @return [Ok]
  def remove_contacts(user_ids)
    broadcast('@type'    => 'removeContacts',
              'user_ids' => user_ids)
  end
  
  # Removes a sticker from the list of favorite stickers.
  #
  # @param sticker [InputFile] Sticker file to delete from the list.
  # @return [Ok]
  def remove_favorite_sticker(sticker)
    broadcast('@type'   => 'removeFavoriteSticker',
              'sticker' => sticker)
  end
  
  # Removes a proxy server.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @return [Ok]
  def remove_proxy(proxy_id)
    broadcast('@type'    => 'removeProxy',
              'proxy_id' => proxy_id)
  end
  
  # Removes a hashtag from the list of recently used hashtags.
  #
  # @param hashtag [String] Hashtag to delete.
  # @return [Ok]
  def remove_recent_hashtag(hashtag)
    broadcast('@type'   => 'removeRecentHashtag',
              'hashtag' => hashtag)
  end
  
  # Removes a sticker from the list of recently used stickers.
  #
  # @param is_attached [Boolean] Pass true to remove the sticker from the list of stickers recently attached to photo
  #   or video files; pass false to remove the sticker from the list of recently sent stickers.
  # @param sticker [InputFile] Sticker file to delete.
  # @return [Ok]
  def remove_recent_sticker(sticker, is_attached: false)
    broadcast('@type'       => 'removeRecentSticker',
              'is_attached' => is_attached,
              'sticker'     => sticker)
  end
  
  # Removes a chat from the list of recently found chats.
  #
  # @param chat_id [Integer] Identifier of the chat to be removed.
  # @return [Ok]
  def remove_recently_found_chat(chat_id)
    broadcast('@type'   => 'removeRecentlyFoundChat',
              'chat_id' => chat_id)
  end
  
  # Removes an animation from the list of saved animations.
  #
  # @param animation [InputFile] Animation file to be removed.
  # @return [Ok]
  def remove_saved_animation(animation)
    broadcast('@type'     => 'removeSavedAnimation',
              'animation' => animation)
  end
  
  # Removes a sticker from the set to which it belongs; for bots only.
  # The sticker set must have been created by the bot.
  #
  # @param sticker [InputFile] Sticker.
  # @return [Ok]
  def remove_sticker_from_set(sticker)
    broadcast('@type'   => 'removeStickerFromSet',
              'sticker' => sticker)
  end
  
  # Removes a chat from the list of frequently used chats.
  # Supported only if the chat info database is enabled.
  #
  # @param category [TopChatCategory] Category of frequently used chats.
  # @param chat_id [Integer] Chat identifier.
  # @return [Ok]
  def remove_top_chat(category, chat_id)
    broadcast('@type'    => 'removeTopChat',
              'category' => category,
              'chat_id'  => chat_id)
  end
  
  # Changes the order of installed sticker sets.
  #
  # @param is_masks [Boolean] Pass true to change the order of mask sticker sets; pass false to change the order of
  #   ordinary sticker sets.
  # @param sticker_set_ids [Array<Integer>] Identifiers of installed sticker sets in the new correct order.
  # @return [Ok]
  def reorder_installed_sticker_sets(sticker_set_ids, is_masks: false)
    broadcast('@type'           => 'reorderInstalledStickerSets',
              'is_masks'        => is_masks,
              'sticker_set_ids' => sticker_set_ids)
  end
  
  # Reports a chat to the Telegram moderators.
  # Supported only for supergroups, channels, or private chats with bots, since other chats can't be checked by
  #   moderators.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param reason [ChatReportReason] The reason for reporting the chat.
  # @param message_ids [Array<Integer>] Identifiers of reported messages, if any.
  # @return [Ok]
  def report_chat(chat_id, reason, message_ids = [])
    broadcast('@type'       => 'reportChat',
              'chat_id'     => chat_id,
              'reason'      => reason,
              'message_ids' => message_ids)
  end
  
  # Reports some messages from a user in a supergroup as spam; requires administrator rights in the supergroup.
  #
  # @param supergroup_id [Integer] Supergroup identifier.
  # @param user_id [Integer] User identifier.
  # @param message_ids [Array<Integer>] Identifiers of messages sent in the supergroup by the user.
  #   This list must be non-empty.
  # @return [Ok]
  def report_supergroup_spam(supergroup_id, user_id, message_ids = [])
    broadcast('@type'         => 'reportSupergroupSpam',
              'supergroup_id' => supergroup_id,
              'user_id'       => user_id,
              'message_ids'   => message_ids)
  end
  
  # Requests to send a password recovery code to an email address that was previously set up.
  # Works only when the current authorization state is {TD::Types::AuthorizationState::WaitPassword}.
  #
  # @return [Ok]
  def request_authentication_password_recovery
    broadcast('@type' => 'requestAuthenticationPasswordRecovery')
  end
  
  # Requests to send a password recovery code to an email address that was previously set up.
  #
  # @return [EmailAddressAuthenticationCodeInfo]
  def request_password_recovery
    broadcast('@type' => 'requestPasswordRecovery')
  end
  
  # Re-sends an authentication code to the user.
  # Works only when the current authorization state is {TD::Types::AuthorizationState::WaitCode} and the
  #   {TD::Types::AuthenticationCodeInfo#next_type} of the result is not null.
  #
  # @return [Ok]
  def resend_authentication_code
    broadcast('@type' => 'resendAuthenticationCode')
  end
  
  # Re-sends the authentication code sent to confirm a new phone number for the user.
  # Works only if the previously received {TD::Types::AuthenticationCodeInfo#next_type} was not null.
  #
  # @return [AuthenticationCodeInfo]
  def resend_change_phone_number_code
    broadcast('@type' => 'resendChangePhoneNumberCode')
  end
  
  # Re-sends the code to verify an email address to be added to a user's Telegram Passport.
  #
  # @return [EmailAddressAuthenticationCodeInfo]
  def resend_email_address_verification_code
    broadcast('@type' => 'resendEmailAddressVerificationCode')
  end
  
  # Resends phone number confirmation code.
  #
  # @return [AuthenticationCodeInfo]
  def resend_phone_number_confirmation_code
    broadcast('@type' => 'resendPhoneNumberConfirmationCode')
  end
  
  # Re-sends the code to verify a phone number to be added to a user's Telegram Passport.
  #
  # @return [AuthenticationCodeInfo]
  def resend_phone_number_verification_code
    broadcast('@type' => 'resendPhoneNumberVerificationCode')
  end
  
  # Resets all notification settings to their default values.
  # By default, all chats are unmuted, the sound is set to "default" and message previews are shown.
  #
  # @return [Ok]
  def reset_all_notification_settings
    broadcast('@type' => 'resetAllNotificationSettings')
  end
  
  # Resets all network data usage statistics to zero.
  # Can be called before authorization.
  #
  # @return [Ok]
  def reset_network_statistics
    broadcast('@type' => 'resetNetworkStatistics')
  end
  
  # Searches for call messages.
  # Returns the results in reverse chronological order (i.
  # e., in order of decreasing message_id).
  # For optimal performance the number of returned messages is chosen by the library.
  #
  # @param from_message_id [Integer] Identifier of the message from which to search; use 0 to get results from the last
  #   message.
  # @param limit [Integer] The maximum number of messages to be returned; up to 100.
  #   Fewer messages may be returned than specified by the limit, even if the end of the message history has not been
  #   reached.
  # @param only_missed [Boolean] If true, returns only messages with missed calls.
  # @return [Messages]
  def search_call_messages(from_message_id, limit = 100, only_missed: false)
    broadcast('@type'           => 'searchCallMessages',
              'from_message_id' => from_message_id,
              'limit'           => limit,
              'only_missed'     => only_missed)
  end
  
  # Searches for a specified query in the first name, last name and username of the members of a specified chat.
  # Requires administrator rights in channels.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param query [String] Query to search for.
  # @param limit [Integer] The maximum number of users to be returned.
  # @param filter [ChatMembersFilter] The type of users to return.
  #   By default, {TD::Types::ChatMembersFilter::Members}.
  # @return [ChatMembers]
  def search_chat_members(chat_id, limit = 100, query: nil, filter: ChatMembersFilter::Members.new)
    broadcast('@type'   => 'searchChatMembers',
              'chat_id' => chat_id,
              'query'   => query,
              'limit'   => limit,
              'filter'  => filter)
  end
  
  # Searches for messages with given words in the chat.
  # Returns the results in reverse chronological order, i.e. in order of decreasing message_id.
  # Cannot be used in secret chats with a non-empty query (searchSecretMessages should be used instead), or without an
  #   enabled message database.
  # For optimal performance the number of returned messages is chosen by the library.
  #
  # @param chat_id [Integer] Identifier of the chat in which to search messages.
  # @param query [String] Query to search for.
  # @param sender_user_id [Integer] If not 0, only messages sent by the specified user will be returned.
  #   Not supported in secret chats.
  # @param from_message_id [Integer] Identifier of the message starting from which history must be fetched; use 0 to
  #   get results from the last message.
  # @param offset [Integer] Specify 0 to get results from exactly the from_message_id or a negative offset to get the
  #   specified message and some newer messages.
  # @param limit [Integer] The maximum number of messages to be returned; must be positive and can't be greater than
  #   100.
  #   If the offset is negative, the limit must be greater than -offset.
  #   Fewer messages may be returned than specified by the limit, even if the end of the message history has not been
  #   reached.
  # @param filter [SearchMessagesFilter] Filter for message content in the search results.
  # @return [Messages]
  def search_chat_messages(chat_id, offset = 0, limit = 100,
                           query: nil, sender_user_id: 0, from_message_id: 0, filter: SearchMessagesFilter::Empty.new)
    broadcast('@type'           => 'searchChatMessages',
              'chat_id'         => chat_id,
              'query'           => query,
              'sender_user_id'  => sender_user_id,
              'from_message_id' => from_message_id,
              'offset'          => offset,
              'limit'           => limit,
              'filter'          => filter)
  end
  
  # Returns information about the recent locations of chat members that were sent to the chat.
  # Returns up to 1 location message per user.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param limit [Integer] Maximum number of messages to be returned.
  # @return [Messages]
  def search_chat_recent_location_messages(chat_id, limit = 100)
    broadcast('@type'   => 'searchChatRecentLocationMessages',
              'chat_id' => chat_id,
              'limit'   => limit)
  end
  
  # Searches for the specified query in the title and username of already known chats, this is an offline request.
  # Returns chats in the order seen in the chat list.
  #
  # @param query [String] Query to search for.
  #   If the query is empty, returns up to 20 recently found chats.
  # @param limit [Integer] Maximum number of chats to be returned.
  # @return [Chats]
  def search_chats(query = nil, limit = 100)
    broadcast('@type' => 'searchChats',
              'query' => query,
              'limit' => limit)
  end
  
  # Searches for the specified query in the title and username of already known chats via request to the server.
  # Returns chats in the order seen in the chat list.
  #
  # @param query [String] Query to search for.
  # @param limit [Integer] Maximum number of chats to be returned.
  # @return [Chats]
  def search_chats_on_server(query, limit = 100)
    broadcast('@type' => 'searchChatsOnServer',
              'query' => query,
              'limit' => limit)
  end
  
  # Searches for the specified query in the first names, last names and usernames of the known user contacts.
  #
  # @param query [String] Query to search for; can be empty to return all contacts.
  # @param limit [Integer] Maximum number of users to be returned.
  # @return [Users]
  def search_contacts(query = nil, limit = 100)
    broadcast('@type' => 'searchContacts',
              'query' => query,
              'limit' => limit)
  end
  
  # Searches for recently used hashtags by their prefix.
  #
  # @param prefix [String] Hashtag prefix to search for.
  # @param limit [Integer] Maximum number of hashtags to be returned.
  # @return [Hashtags]
  def search_hashtags(prefix = nil, limit = 100)
    broadcast('@type'  => 'searchHashtags',
              'prefix' => prefix,
              'limit'  => limit)
  end
  
  # Searches for installed sticker sets by looking for specified query in their title and name.
  #
  # @param is_masks [Boolean] Pass true to return mask sticker sets; pass false to return ordinary sticker sets.
  # @param query [String] Query to search for.
  # @param limit [Integer] Maximum number of sticker sets to return.
  # @return [StickerSets]
  def search_installed_sticker_sets(query = nil, limit = 100, is_masks: false)
    broadcast('@type'    => 'searchInstalledStickerSets',
              'is_masks' => is_masks,
              'query'    => query,
              'limit'    => limit)
  end
  
  # Searches for messages in all chats except secret chats.
  # Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)).
  # For optimal performance the number of returned messages is chosen by the library.
  #
  # @param query [String] Query to search for.
  # @param offset_date [Integer] The date of the message starting from which the results should be fetched.
  #   Use 0 or any date in the future to get results from the last message.
  # @param offset_chat_id [Integer] The chat identifier of the last found message, or 0 for the first request.
  # @param offset_message_id [Integer] The message identifier of the last found message, or 0 for the first request.
  # @param limit [Integer] The maximum number of messages to be returned, up to 100.
  #   Fewer messages may be returned than specified by the limit, even if the end of the message history has not been
  #   reached.
  # @return [Messages]
  def search_messages(query, limit = 100, offset_date: 0, offset_chat_id: 0, offset_message_id: 0)
    broadcast('@type'             => 'searchMessages',
              'query'             => query,
              'offset_date'       => offset_date,
              'offset_chat_id'    => offset_chat_id,
              'offset_message_id' => offset_message_id,
              'limit'             => limit)
  end
  
  # Searches a public chat by its username.
  # Currently only private chats, supergroups and channels can be public.
  # Returns the chat if found; otherwise an error is returned.
  #
  # @param username [String] Username to be resolved.
  # @return [Chat]
  def search_public_chat(username)
    broadcast('@type'    => 'searchPublicChat',
              'username' => username)
  end
  
  # Searches public chats by looking for specified query in their username and title.
  # Currently only private chats, supergroups and channels can be public.
  # Returns a meaningful number of results.
  # Returns nothing if the length of the searched username prefix is less than 5.
  # Excludes private chats with contacts and chats from the chat list from the results.
  #
  # @param query [String] Query to search for.
  # @return [Chats]
  def search_public_chats(query)
    broadcast('@type' => 'searchPublicChats',
              'query' => query)
  end
  
  # Searches for messages in secret chats.
  # Returns the results in reverse chronological order.
  # For optimal performance the number of returned messages is chosen by the library.
  #
  # @param chat_id [Integer] Identifier of the chat in which to search.
  #   Specify 0 to search in all secret chats.
  # @param query [String] Query to search for.
  #   If empty, {#search_chat_messages} should be used instead.
  # @param from_search_id [Integer] The identifier from the result of a previous request, use 0 to get results from the
  #   last message.
  # @param limit [Integer] Maximum number of messages to be returned; up to 100.
  #   Fewer messages may be returned than specified by the limit, even if the end of the message history has not been
  #   reached.
  # @param filter [SearchMessagesFilter] A filter for the content of messages in the search results.
  # @return [FoundMessages]
  def search_secret_messages(chat_id, query, limit = 100, from_search_id: 0, filter: SearchMessagesFilter::Empty.new)
    broadcast('@type'          => 'searchSecretMessages',
              'chat_id'        => chat_id,
              'query'          => query,
              'from_search_id' => from_search_id,
              'limit'          => limit,
              'filter'         => filter)
  end
  
  # Searches for a sticker set by its name.
  #
  # @param name [String] Name of the sticker set.
  # @return [StickerSet]
  def search_sticker_set(name)
    broadcast('@type' => 'searchStickerSet',
              'name'  => name)
  end
  
  # Searches for ordinary sticker sets by looking for specified query in their title and name.
  # Excludes installed sticker sets from the results.
  #
  # @param query [String] Query to search for.
  # @return [StickerSets]
  def search_sticker_sets(query)
    broadcast('@type' => 'searchStickerSets',
              'query' => query)
  end
  
  # Searches for stickers from public sticker sets that correspond to a given emoji.
  #
  # @param emoji [String] String representation of emoji; must be non-empty.
  # @param limit [Integer] Maximum number of stickers to be returned.
  # @return [Stickers]
  def search_stickers(emoji, limit = 100)
    broadcast('@type' => 'searchStickers',
              'emoji' => emoji,
              'limit' => limit)
  end
  
  # Invites a bot to a chat (if it is not yet a member) and sends it the /start command.
  # Bots can't be invited to a private chat other than the chat with the bot.
  # Bots can't be invited to channels (although they can be added as admins) and secret chats.
  # Returns the sent message.
  #
  # @param bot_user_id [Integer] Identifier of the bot.
  # @param chat_id [Integer] Identifier of the target chat.
  # @param parameter [String] A hidden parameter sent to the bot for deep linking purposes
  # @see https://api.telegram.org/bots#deep-linking
  # @return [Message]
  def send_bot_start_message(bot_user_id, chat_id, parameter = nil)
    broadcast('@type'       => 'sendBotStartMessage',
              'bot_user_id' => bot_user_id,
              'chat_id'     => chat_id,
              'parameter'   => parameter)
  end
  
  # Sends debug information for a call.
  #
  # @param call_id [Integer] Call identifier.
  # @param debug_information [String] Debug information in application-specific format.
  # @return [Ok]
  def send_call_debug_information(call_id, debug_information)
    broadcast('@type'             => 'sendCallDebugInformation',
              'call_id'           => call_id,
              'debug_information' => debug_information)
  end
  
  # Sends a call rating.
  #
  # @param call_id [Integer] Call identifier.
  # @param rating [Integer] Call rating; 1-5.
  # @param comment [String] An optional user comment if the rating is less than 5.
  # @return [Ok]
  def send_call_rating(call_id, rating, comment = nil)
    broadcast('@type'   => 'sendCallRating',
              'call_id' => call_id,
              'rating'  => rating,
              'comment' => comment)
  end
  
  # Sends a notification about user activity in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param action [ChatAction] The action description.
  # @return [Ok]
  def send_chat_action(chat_id, action)
    broadcast('@type'   => 'sendChatAction',
              'chat_id' => chat_id,
              'action'  => action)
  end
  
  # Sends a notification about a screenshot taken in a chat.
  # Supported only in private and secret chats.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [Ok]
  def send_chat_screenshot_taken_notification(chat_id)
    broadcast('@type'   => 'sendChatScreenshotTakenNotification',
              'chat_id' => chat_id)
  end
  
  # Changes the current TTL setting (sets a new self-destruct timer) in a secret chat and sends the corresponding
  #   message.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param ttl [Integer] New TTL value, in seconds.
  # @return [Message]
  def send_chat_set_ttl_message(chat_id, ttl)
    broadcast('@type'   => 'sendChatSetTtlMessage',
              'chat_id' => chat_id,
              'ttl'     => ttl)
  end
  
  # Sends a custom request; for bots only.
  #
  # @param method [String] The method name.
  # @param parameters [String] JSON-serialized method parameters.
  # @return [CustomRequestResult]
  def send_custom_request(method, parameters)
    broadcast('@type'      => 'sendCustomRequest',
              'method'     => method,
              'parameters' => parameters)
  end
  
  # Sends a code to verify an email address to be added to a user's Telegram Passport.
  #
  # @param email_address [String] Email address.
  # @return [EmailAddressAuthenticationCodeInfo]
  def send_email_address_verification_code(email_address)
    broadcast('@type'         => 'sendEmailAddressVerificationCode',
              'email_address' => email_address)
  end
  
  # Sends the result of an inline query as a message.
  # Returns the sent message.
  # Always clears a chat draft message.
  #
  # @param chat_id [Integer] Target chat.
  # @param reply_to_message_id [Integer] Identifier of a message to reply to or 0.
  # @param disable_notification [Boolean] Pass true to disable notification for the message.
  #   Not supported in secret chats.
  # @param from_background [Boolean] Pass true if the message is sent from background.
  # @param query_id [Integer] Identifier of the inline query.
  # @param result_id [String] Identifier of the inline result.
  # @return [Message]
  def send_inline_query_result_message(chat_id, query_id, result_id,
                                       reply_to_message_id: 0, disable_notification: false, from_background: false)
    broadcast('@type'                => 'sendInlineQueryResultMessage',
              'chat_id'              => chat_id,
              'reply_to_message_id'  => reply_to_message_id,
              'disable_notification' => disable_notification,
              'from_background'      => from_background,
              'query_id'             => query_id,
              'result_id'            => result_id)
  end
  
  # Sends a message.
  #
  # @param chat_id [Integer] Target chat.
  # @param reply_to_message_id [Integer] Identifier of the message to reply to or 0.
  # @param disable_notification [Boolean] Pass true to disable notification for the message.
  #   Not supported in secret chats.
  # @param from_background [Boolean] Pass true if the message is sent from the background.
  # @param reply_markup [ReplyMarkup] Markup for replying to the message; for bots only.
  # @param input_message_content [InputMessageContent] The content of the message to be sent.
  # @return [Message] the sent message.
  def send_message(chat_id, input_message_content,
                   reply_to_message_id: 0, disable_notification: false, from_background: false, reply_markup: nil)
    broadcast('@type'                 => 'sendMessage',
              'chat_id'               => chat_id,
              'reply_to_message_id'   => reply_to_message_id,
              'disable_notification'  => disable_notification,
              'from_background'       => from_background,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Sends messages grouped together into an album.
  # Currently only photo and video messages can be grouped into an album.
  #
  # @param chat_id [Integer] Target chat.
  # @param reply_to_message_id [Integer] Identifier of a message to reply to or 0.
  # @param disable_notification [Boolean] Pass true to disable notification for the messages.
  #   Not supported in secret chats.
  # @param from_background [Boolean] Pass true if the messages are sent from the background.
  # @param input_message_contents [Array<InputMessageContent>] Contents of messages to be sent.
  # @return [Messages] the sent messages.
  def send_message_album(chat_id, input_message_contents,
                         reply_to_message_id: 0, disable_notification: false, from_background: false)
    broadcast('@type'                  => 'sendMessageAlbum',
              'chat_id'                => chat_id,
              'reply_to_message_id'    => reply_to_message_id,
              'disable_notification'   => disable_notification,
              'from_background'        => from_background,
              'input_message_contents' => input_message_contents)
  end
  
  # Sends a Telegram Passport authorization form, effectively sharing data with the service.
  #
  # @param autorization_form_id [Integer] Authorization form identifier.
  # @param types [Array<PassportElementType>] Types of Telegram Passport elements chosen by user to complete the
  #   authorization form.
  # @return [Ok]
  def send_passport_authorization_form(autorization_form_id, types)
    broadcast('@type'                => 'sendPassportAuthorizationForm',
              'autorization_form_id' => autorization_form_id,
              'types'                => types)
  end
  
  # Sends a filled-out payment form to the bot for final verification.
  #
  # @param chat_id [Integer] Chat identifier of the Invoice message.
  # @param message_id [Integer] Message identifier.
  # @param order_info_id [String] Identifier returned by {#validate_order_info}, or an empty string.
  # @param shipping_option_id [String] Identifier of a chosen shipping option, if applicable.
  # @param credentials [InputCredentials] The credentials chosen by user for payment.
  # @return [PaymentResult]
  def send_payment_form(chat_id, message_id, credentials, order_info_id: "", shipping_option_id: nil)
    broadcast('@type'              => 'sendPaymentForm',
              'chat_id'            => chat_id,
              'message_id'         => message_id,
              'order_info_id'      => order_info_id,
              'shipping_option_id' => shipping_option_id,
              'credentials'        => credentials)
  end
  
  # Sends phone number confirmation code.
  # Should be called when user presses "https://t.me/confirmphone?phone=*******&hash=**********" or
  #   "tg://confirmphone?phone=*******&hash=**********" link.
  #
  # @param hash [String] Value of the "hash" parameter from the link.
  # @param phone_number [String] Value of the "phone" parameter from the link.
  # @param allow_flash_call [Boolean] Pass true if the authentication code may be sent via flash call to the specified
  #   phone number.
  # @param is_current_phone_number [Boolean] Pass true if the phone number is used on the current device.
  #   Ignored if allow_flash_call is false.
  # @return [AuthenticationCodeInfo]
  def send_phone_number_confirmation_code(hash, phone_number, allow_flash_call: false, is_current_phone_number: false)
    broadcast('@type'                   => 'sendPhoneNumberConfirmationCode',
              'hash'                    => hash,
              'phone_number'            => phone_number,
              'allow_flash_call'        => allow_flash_call,
              'is_current_phone_number' => is_current_phone_number)
  end
  
  # Sends a code to verify a phone number to be added to a user's Telegram Passport.
  #
  # @param phone_number [String] The phone number of the user, in international format.
  # @param allow_flash_call [Boolean] Pass true if the authentication code may be sent via flash call to the specified
  #   phone number.
  # @param is_current_phone_number [Boolean] Pass true if the phone number is used on the current device.
  #   Ignored if allow_flash_call is false.
  # @return [AuthenticationCodeInfo]
  def send_phone_number_verification_code(phone_number, allow_flash_call: false, is_current_phone_number: false)
    broadcast('@type'                   => 'sendPhoneNumberVerificationCode',
              'phone_number'            => phone_number,
              'allow_flash_call'        => allow_flash_call,
              'is_current_phone_number' => is_current_phone_number)
  end
  
  # Changes the period of inactivity after which the account of the current user will automatically be deleted.
  #
  # @param ttl [AccountTtl] New account TTL.
  # @return [Ok]
  def set_account_ttl(ttl)
    broadcast('@type' => 'setAccountTtl',
              'ttl'   => ttl)
  end
  
  # Succeeds after a specified amount of time has passed.
  # Can be called before authorization.
  # Can be called before initialization.
  #
  # @param seconds [Float] Number of seconds before the function returns.
  # @return [Ok]
  def set_alarm(seconds)
    broadcast('@type'   => 'setAlarm',
              'seconds' => seconds)
  end
  
  # Sets the phone number of the user and sends an authentication code to the user.
  # Works only when the current authorization state is A{TD::Types::AuthorizationState::WaitPhoneNumber}.
  #
  # @param phone_number [String] The phone number of the user, in international format.
  # @param allow_flash_call [Boolean] Pass true if the authentication code may be sent via flash call to the specified
  #   phone number.
  # @param is_current_phone_number [Boolean] Pass true if the phone number is used on the current device.
  #   Ignored if allow_flash_call is false.
  # @return [Ok]
  def set_authentication_phone_number(phone_number, allow_flash_call: false, is_current_phone_number: false)
    broadcast('@type'                   => 'setAuthenticationPhoneNumber',
              'phone_number'            => phone_number,
              'allow_flash_call'        => allow_flash_call,
              'is_current_phone_number' => is_current_phone_number)
  end
  
  # Changes the bio of the current user.
  #
  # @param bio [String] The new value of the user bio; 0-70 characters without line feeds.
  # @return [Ok]
  def set_bio(bio)
    broadcast('@type' => 'setBio',
              'bio'   => bio)
  end
  
  # Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots
  #   only.
  #
  # @param pending_update_count [Integer] The number of pending updates.
  # @param error_message [String] The last error message.
  # @return [Ok]
  def set_bot_updates_status(pending_update_count, error_message)
    broadcast('@type'                => 'setBotUpdatesStatus',
              'pending_update_count' => pending_update_count,
              'error_message'        => error_message)
  end
  
  # Changes client data associated with a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param client_data [String] New value of client_data.
  # @return [Ok]
  def set_chat_client_data(chat_id, client_data)
    broadcast('@type'       => 'setChatClientData',
              'chat_id'     => chat_id,
              'client_data' => client_data)
  end
  
  # Changes the draft message in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param draft_message [DraftMessage] New draft message; may be null.
  # @return [Ok]
  def set_chat_draft_message(chat_id, draft_message = nil)
    broadcast('@type'         => 'setChatDraftMessage',
              'chat_id'       => chat_id,
              'draft_message' => draft_message)
  end
  
  # Changes the status of a chat member, needs appropriate privileges.
  # This function is currently not suitable for adding new members to the chat; instead, use {#add_chat_member}.
  # The chat member status will not be changed until it has been synchronized with the server.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_id [Integer] User identifier.
  # @param status [ChatMemberStatus] The new status of the member in the chat.
  # @return [Ok]
  def set_chat_member_status(chat_id, user_id, status)
    broadcast('@type'   => 'setChatMemberStatus',
              'chat_id' => chat_id,
              'user_id' => user_id,
              'status'  => status)
  end
  
  # Changes the notification settings of a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param notification_settings [ChatNotificationSettings] New notification settings for the chat.
  # @return [Ok]
  def set_chat_notification_settings(chat_id, notification_settings)
    broadcast('@type'                 => 'setChatNotificationSettings',
              'chat_id'               => chat_id,
              'notification_settings' => notification_settings)
  end
  
  # Changes the photo of a chat.
  # Supported only for basic groups, supergroups and channels.
  # Requires administrator rights in basic groups and the appropriate administrator rights in supergroups and channels.
  # The photo will not be changed before request to the server has been completed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param photo [InputFile] New chat photo.
  #   You can use a zero InputFileId to delete the chat photo.
  #   Files that are accessible only by HTTP URL are not acceptable.
  # @return [Ok]
  def set_chat_photo(chat_id, photo = InputFile::Id.new(id: 0))
    broadcast('@type'   => 'setChatPhoto',
              'chat_id' => chat_id,
              'photo'   => photo)
  end
  
  # Changes the chat title.
  # Supported only for basic groups, supergroups and channels.
  # Requires administrator rights in basic groups and the appropriate administrator rights in supergroups and channels.
  # The title will not be changed until the request to the server has been completed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param title [String] New title of the chat; 1-255 characters.
  # @return [Ok]
  def set_chat_title(chat_id, title)
    broadcast('@type'   => 'setChatTitle',
              'chat_id' => chat_id,
              'title'   => title)
  end
  
  # Adds or changes a custom language pack to the current localization target.
  #
  # @param info [LanguagePackInfo] Information about the language pack.
  #   Language pack ID must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64
  #   characters.
  # @param strings [Array<LanguagePackString>] Strings of the new language pack.
  # @return [Ok]
  def set_custom_language_pack(info, strings)
    broadcast('@type'   => 'setCustomLanguagePack',
              'info'    => info,
              'strings' => strings)
  end
  
  # Adds, edits or deletes a string in a custom language pack.
  #
  # @param language_pack_id [String] Identifier of a previously added custom language pack in the current localization
  #   target.
  # @param new_string [LanguagePackString] New language pack string.
  # @return [Ok]
  def set_custom_language_pack_string(language_pack_id, new_string)
    broadcast('@type'            => 'setCustomLanguagePackString',
              'language_pack_id' => language_pack_id,
              'new_string'       => new_string)
  end
  
  # Changes the database encryption key.
  # Usually the encryption key is never changed and is stored in some OS keychain.
  #
  # @param new_encryption_key [String] New encryption key.
  # @return [Ok]
  def set_database_encryption_key(new_encryption_key)
    broadcast('@type'              => 'setDatabaseEncryptionKey',
              'new_encryption_key' => new_encryption_key)
  end
  
  # The next part of a file was generated.
  #
  # @param generation_id [Integer] The identifier of the generation process.
  # @param expected_size [Integer] Expected size of the generated file, in bytes; 0 if unknown.
  # @param local_prefix_size [Integer] The number of bytes already generated.
  # @return [Ok]
  def set_file_generation_progress(generation_id, local_prefix_size, expected_size: 0)
    broadcast('@type'             => 'setFileGenerationProgress',
              'generation_id'     => generation_id,
              'expected_size'     => expected_size,
              'local_prefix_size' => local_prefix_size)
  end
  
  # Updates the game score of the specified user in the game; for bots only.
  #
  # @param chat_id [Integer] The chat to which the message with the game.
  # @param message_id [Integer] Identifier of the message.
  # @param edit_message [Boolean] True, if the message should be edited.
  # @param user_id [Integer] User identifier.
  # @param score [Integer] The new score.
  # @param force [Boolean] Pass true to update the score even if it decreases.
  #   If the score is 0, the user will be deleted from the high score table.
  # @return [Message]
  def set_game_score(chat_id, message_id, user_id, score, edit_message: false, force: false)
    broadcast('@type'        => 'setGameScore',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'edit_message' => edit_message,
              'user_id'      => user_id,
              'score'        => score,
              'force'        => force)
  end
  
  # Updates the game score of the specified user in a game; for bots only.
  #
  # @param inline_message_id [String] Inline message identifier.
  # @param edit_message [Boolean] True, if the message should be edited.
  # @param user_id [Integer] User identifier.
  # @param score [Integer] The new score.
  # @param force [Boolean] Pass true to update the score even if it decreases.
  #   If the score is 0, the user will be deleted from the high score table.
  # @return [Ok]
  def set_inline_game_score(inline_message_id, user_id, score, edit_message: false, force: false)
    broadcast('@type'             => 'setInlineGameScore',
              'inline_message_id' => inline_message_id,
              'edit_message'      => edit_message,
              'user_id'           => user_id,
              'score'             => score,
              'force'             => force)
  end
  
  # Changes the first and last name of the current user.
  # If something changes, {TD::Types::Update::User} will be sent.
  #
  # @param first_name [String] The new value of the first name for the user; 1-255 characters.
  # @param last_name [String] The new value of the optional last name for the user; 0-255 characters.
  # @return [Ok]
  def set_name(first_name, last_name)
    broadcast('@type'      => 'setName',
              'first_name' => first_name,
              'last_name'  => last_name)
  end
  
  # Sets the current network type.
  # Can be called before authorization.
  # Calling this method forces all network connections to reopen, mitigating the delay in switching between different
  #   networks, so it should be called whenever the network is changed, even if the network type remains the same.
  # Network type is used to check whether the library can use the network at all and also for collecting detailed
  #   network data usage statistics.
  #
  # @param type [NetworkType] The new network type.
  #   By default, {TD::Types::NetworkType::Other}.
  # @return [Ok]
  def set_network_type(type = NetworkType::Other)
    broadcast('@type' => 'setNetworkType',
              'type'  => type)
  end
  
  # Sets the value of an option.
  # Only writable options can be set.
  # Can be called before authorization.
  #
  # @param name [String] The name of the option.
  # @param value [OptionValue] The new value of the option.
  # @see https://core.telegram.org/tdlib/options List of available options
  # @return [Ok]
  def set_option(name, value)
    broadcast('@type' => 'setOption',
              'name'  => name,
              'value' => value)
  end
  
  # Adds an element to the user's Telegram Passport.
  # May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone
  #   number or the chosen email address must be verified first.
  #
  # @param element [InputPassportElement] Input Telegram Passport element.
  # @param password [String] Password of the current user.
  # @return [PassportElement]
  def set_passport_element(element, password)
    broadcast('@type'    => 'setPassportElement',
              'element'  => element,
              'password' => password)
  end
  
  # Informs the user that some of the elements in their Telegram Passport contain errors; for bots only.
  # The user will not be able to resend the elements, until the errors are fixed.
  #
  # @param user_id [Integer] User identifier.
  # @param errors [Array<InputPassportElementError>] The errors.
  # @return [Ok]
  def set_passport_element_errors(user_id, errors)
    broadcast('@type'   => 'setPassportElementErrors',
              'user_id' => user_id,
              'errors'  => errors)
  end
  
  # Changes the password for the user.
  # If a new recovery email address is specified, then the error EMAIL_UNCONFIRMED is returned and the password change
  #   will not be applied until the new recovery email address has been confirmed.
  # The application should periodically call {#get_password_state} to check whether the new email address has been
  #   confirmed.
  #
  # @param old_password [String] Previous password of the user.
  # @param new_password [String] New password of the user; may be empty to remove the password.
  # @param new_hint [String] New password hint; may be empty.
  # @param set_recovery_email_address [Boolean] Pass true if the recovery email address should be changed.
  # @param new_recovery_email_address [String] New recovery email address; may be empty.
  # @return [PasswordState]
  def set_password(old_password, new_password: nil, new_hint: nil, set_recovery_email_address: false,
                   new_recovery_email_address: nil)
    broadcast('@type'                      => 'setPassword',
              'old_password'               => old_password,
              'new_password'               => new_password,
              'new_hint'                   => new_hint,
              'set_recovery_email_address' => set_recovery_email_address,
              'new_recovery_email_address' => new_recovery_email_address)
  end
  
  # Changes the order of pinned chats.
  #
  # @param chat_ids [Array<Integer>] The new list of pinned chats.
  # @return [Ok]
  def set_pinned_chats(chat_ids)
    broadcast('@type'    => 'setPinnedChats',
              'chat_ids' => chat_ids)
  end
  
  # Uploads a new profile photo for the current user.
  # If something changes, {TD::Types::Update::User} will be sent.
  #
  # @param photo [InputFile] Profile photo to set.
  #   {TD::Types::InputFile::Id} and {TD::Types::InputFile::Remote} may still be unsupported.
  # @return [Ok]
  def set_profile_photo(photo)
    broadcast('@type' => 'setProfilePhoto',
              'photo' => photo)
  end
  
  # Changes the recovery email address of the user.
  # If a new recovery email address is specified, then the error EMAIL_UNCONFIRMED is returned and the email address
  #   will not be changed until the new email has been confirmed.
  # The application should periodically call {#get_password_state} to check whether the email address has been
  #   confirmed.
  # If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds
  #   immediately and aborts all other requests waiting for an email confirmation.
  #
  # @param password [String] Password of the current user.
  # @param new_recovery_email_address [String] New recovery email address.
  # @return [PasswordState]
  def set_recovery_email_address(new_recovery_email_address, password)
    broadcast('@type'                      => 'setRecoveryEmailAddress',
              'password'                   => password,
              'new_recovery_email_address' => new_recovery_email_address)
  end
  
  # Changes notification settings for chats of a given type.
  #
  # @param scope [NotificationSettingsScope] Types of chats for which to change the notification settings.
  # @param notification_settings [ScopeNotificationSettings] The new notification settings for the given scope.
  # @return [Ok]
  def set_scope_notification_settings(scope, notification_settings)
    broadcast('@type'                 => 'setScopeNotificationSettings',
              'scope'                 => scope,
              'notification_settings' => notification_settings)
  end
  
  # Changes the position of a sticker in the set to which it belongs; for bots only.
  # The sticker set must have been created by the bot.
  #
  # @param sticker [InputFile] Sticker.
  # @param position [Integer] New position of the sticker in the set, zero-based.
  # @return [Ok]
  def set_sticker_position_in_set(sticker, position)
    broadcast('@type'    => 'setStickerPositionInSet',
              'sticker'  => sticker,
              'position' => position)
  end
  
  # Changes information about a supergroup or channel; requires appropriate administrator rights.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param description [String] New supergroup or channel description; 0-255 characters.
  # @return [Ok]
  def set_supergroup_description(supergroup_id, description)
    broadcast('@type'         => 'setSupergroupDescription',
              'supergroup_id' => supergroup_id,
              'description'   => description)
  end
  
  # Changes the sticker set of a supergroup; requires appropriate rights in the supergroup.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @param sticker_set_id [Integer] New value of the supergroup sticker set identifier.
  #   Use 0 to remove the supergroup sticker set.
  # @return [Ok]
  def set_supergroup_sticker_set(supergroup_id, sticker_set_id = 0)
    broadcast('@type'          => 'setSupergroupStickerSet',
              'supergroup_id'  => supergroup_id,
              'sticker_set_id' => sticker_set_id)
  end
  
  # Changes the username of a supergroup or channel, requires creator privileges in the supergroup or channel.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param username [String] New value of the username.
  #   Use an empty string to remove the username.
  # @return [Ok]
  def set_supergroup_username(supergroup_id, username = "")
    broadcast('@type'         => 'setSupergroupUsername',
              'supergroup_id' => supergroup_id,
              'username'      => username)
  end
  
  # Sets the parameters for TDLib initialization.
  # Works only when the current authorization state is {TD::Types::AuthorizationState::WaitTdlibParameters}.
  #
  # @param parameters [TdlibParameters] Parameters.
  # @return [Ok]
  def set_tdlib_parameters(parameters)
    broadcast('@type'      => 'setTdlibParameters',
              'parameters' => parameters)
  end
  
  # Changes user privacy settings.
  #
  # @param setting [UserPrivacySetting] The privacy setting.
  # @param rules [UserPrivacySettingRules] The new privacy rules.
  # @return [Ok]
  def set_user_privacy_setting_rules(setting, rules)
    broadcast('@type'   => 'setUserPrivacySettingRules',
              'setting' => setting,
              'rules'   => rules)
  end
  
  # Changes the username of the current user.
  # If something changes, {TD::Types::Update::User} will be sent.
  #
  # @param username [String] The new value of the username.
  #   Use an empty string to remove the username.
  # @return [Ok]
  def set_username(username = "")
    broadcast('@type'    => 'setUsername',
              'username' => username)
  end
  
  # Terminates all other sessions of the current user.
  #
  # @return [Ok]
  def terminate_all_other_sessions
    broadcast('@type' => 'terminateAllOtherSessions')
  end
  
  # Terminates a session of the current user.
  #
  # @param session_id [Integer] Session identifier.
  # @return [Ok]
  def terminate_session(session_id)
    broadcast('@type'      => 'terminateSession',
              'session_id' => session_id)
  end
  
  # Toggles the "All members are admins" setting in basic groups; requires creator privileges in the group.
  #
  # @param basic_group_id [Integer] Identifier of the basic group.
  # @param everyone_is_administrator [Boolean] New value of everyone_is_administrator.
  # @return [Ok]
  def toggle_basic_group_administrators(basic_group_id, everyone_is_administrator)
    broadcast('@type'                     => 'toggleBasicGroupAdministrators',
              'basic_group_id'            => basic_group_id,
              'everyone_is_administrator' => everyone_is_administrator)
  end
  
  # Changes the value of the default disable_notification parameter, used when a message is sent to a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param default_disable_notification [Boolean] New value of default_disable_notification.
  # @return [Ok]
  def toggle_chat_default_disable_notification(chat_id, default_disable_notification)
    broadcast('@type'                        => 'toggleChatDefaultDisableNotification',
              'chat_id'                      => chat_id,
              'default_disable_notification' => default_disable_notification)
  end
  
  # Changes the marked as unread state of a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param is_marked_as_unread [Boolean] New value of is_marked_as_unread.
  # @return [Ok]
  def toggle_chat_is_marked_as_unread(chat_id, is_marked_as_unread)
    broadcast('@type'               => 'toggleChatIsMarkedAsUnread',
              'chat_id'             => chat_id,
              'is_marked_as_unread' => is_marked_as_unread)
  end
  
  # Changes the pinned state of a chat.
  # You can pin up to GetOption("pinned_chat_count_max") non-secret chats and the same number of secret chats.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param is_pinned [Boolean] New value of is_pinned.
  # @return [Ok]
  def toggle_chat_is_pinned(chat_id, is_pinned)
    broadcast('@type'     => 'toggleChatIsPinned',
              'chat_id'   => chat_id,
              'is_pinned' => is_pinned)
  end
  
  # Toggles whether all members of a supergroup can add new members; requires appropriate administrator rights in the
  #   supergroup.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @param anyone_can_invite [Boolean] New value of anyone_can_invite.
  # @return [Ok]
  def toggle_supergroup_invites(supergroup_id, anyone_can_invite)
    broadcast('@type'             => 'toggleSupergroupInvites',
              'supergroup_id'     => supergroup_id,
              'anyone_can_invite' => anyone_can_invite)
  end
  
  # Toggles whether the message history of a supergroup is available to new members; requires appropriate administrator
  #   rights in the supergroup.
  #
  # @param supergroup_id [Integer] The identifier of the supergroup.
  # @param is_all_history_available [Boolean] The new value of is_all_history_available.
  # @return [Ok]
  def toggle_supergroup_is_all_history_available(supergroup_id, is_all_history_available)
    broadcast('@type'                    => 'toggleSupergroupIsAllHistoryAvailable',
              'supergroup_id'            => supergroup_id,
              'is_all_history_available' => is_all_history_available)
  end
  
  # Toggles sender signatures messages sent in a channel; requires appropriate administrator rights in the channel.
  #
  # @param supergroup_id [Integer] Identifier of the channel.
  # @param sign_messages [Boolean] New value of sign_messages.
  # @return [Ok]
  def toggle_supergroup_sign_messages(supergroup_id, sign_messages)
    broadcast('@type'         => 'toggleSupergroupSignMessages',
              'supergroup_id' => supergroup_id,
              'sign_messages' => sign_messages)
  end
  
  # Removes a user from the blacklist.
  #
  # @param user_id [Integer] User identifier.
  # @return [Ok]
  def unblock_user(user_id)
    broadcast('@type'   => 'unblockUser',
              'user_id' => user_id)
  end
  
  # Removes the pinned message from a supergroup or channel; requires appropriate administrator rights in the
  #   supergroup or channel.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @return [Ok]
  def unpin_supergroup_message(supergroup_id)
    broadcast('@type'         => 'unpinSupergroupMessage',
              'supergroup_id' => supergroup_id)
  end
  
  # Creates a new supergroup from an existing basic group and sends a corresponding
  #   {TD::Types::MessageContent::UpgradeTo} and {TD::Types::MessageContent::ChatUpgradeFrom}.
  # Deactivates the original basic group.
  #
  # @param chat_id [Integer] Identifier of the chat to upgrade.
  # @return [Chat]
  def upgrade_basic_group_chat_to_supergroup_chat(chat_id)
    broadcast('@type'   => 'upgradeBasicGroupChatToSupergroupChat',
              'chat_id' => chat_id)
  end
  
  # Asynchronously uploads a file to the cloud without sending it in a message.
  # {TD::Types::Update::File} will be used to notify about upload progress and successful completion of the upload.
  # The file will not have a persistent remote identifier until it will be sent in a message.
  #
  # @param file [InputFile] File to upload.
  # @param file_type [FileType] File type.
  # @param priority [Integer] Priority of the upload (1-32).
  #   The higher the priority, the earlier the file will be uploaded.
  #   If the priorities of two files are equal, then the first one for which {#upload_file} was called will be uploaded
  #   first.
  # @return [File]
  def upload_file(file, file_type, priority = 1)
    broadcast('@type'     => 'uploadFile',
              'file'      => file,
              'file_type' => file_type,
              'priority'  => priority)
  end
  
  # Uploads a PNG image with a sticker; for bots only 
  #
  # @param user_id [Integer] Sticker file owner.
  # @param png_sticker [InputFile] PNG image with the sticker; must be up to 512 kB in size and fit in 512x512 square.
  # @return [File] the uploaded file.
  def upload_sticker_file(user_id, png_sticker)
    broadcast('@type'       => 'uploadStickerFile',
              'user_id'     => user_id,
              'png_sticker' => png_sticker)
  end
  
  # Validates the order information provided by a user and returns the available shipping options for a flexible
  #   invoice.
  #
  # @param chat_id [Integer] Chat identifier of the Invoice message.
  # @param message_id [Integer] Message identifier.
  # @param order_info [OrderInfo] The order information, provided by the user.
  # @param allow_save [Boolean] True, if the order information can be saved.
  # @return [ValidatedOrderInfo]
  def validate_order_info(chat_id, message_id, order_info, allow_save: false)
    broadcast('@type'      => 'validateOrderInfo',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'order_info' => order_info,
              'allow_save' => allow_save)
  end
  
  # This method should be called if messages are being viewed by the user.
  # Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as
  #   read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels).
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_ids [Array<Integer>] The identifiers of the messages being viewed.
  # @param force_read [Boolean] True, if messages in closed chats should be marked as read.
  # @return [Ok]
  def view_messages(chat_id, message_ids, force_read: false)
    broadcast('@type'       => 'viewMessages',
              'chat_id'     => chat_id,
              'message_ids' => message_ids,
              'force_read'  => force_read)
  end
  
  # Informs the server that some trending sticker sets have been viewed by the user.
  #
  # @param sticker_set_ids [Array<Integer>] Identifiers of viewed trending sticker sets.
  # @return [Ok]
  def view_trending_sticker_sets(sticker_set_ids = nil)
    broadcast('@type'           => 'viewTrendingStickerSets',
              'sticker_set_ids' => sticker_set_ids)
  end
end
