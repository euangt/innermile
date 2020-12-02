class ConversationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_id: user.id)
    end
  end
  def show?
    user == record.user
    business == record.business.user
  end
end
