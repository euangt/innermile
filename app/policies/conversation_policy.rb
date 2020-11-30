class ConversationPolicy < ApplicationPolicy
  def show?
    user == record.user
    business == record.business.user
  end
end
