class ConversationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_id: user.id)
    end
  end
  def show?
    user == record.user || record.business.user == user
  end
end
