module TD::Types
  # Represents result of checking whether the current session can be used to transfer a chat ownership to another user.
  class CanTransferOwnershipResult < Base
    %w[
      ok
      password_needed
      password_too_fresh
      session_too_fresh
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/can_transfer_ownership_result/#{type}"
    end
  end
end
