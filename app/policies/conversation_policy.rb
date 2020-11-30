class ConversationPolicy < ApplicationPolicy
  def show
    user == record.user
  end
end
