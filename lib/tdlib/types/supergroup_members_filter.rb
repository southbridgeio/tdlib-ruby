module TD::Types
  # Specifies the kind of chat members to return in getSupergroupMembers.
  class SupergroupMembersFilter < Base
    %w[
      recent
      administrators
      search
      restricted
      banned
      bots
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/supergroup_members_filter/#{type}"
    end
  end
end
