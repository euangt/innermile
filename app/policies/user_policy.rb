class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def edit?
    user == record.user
  end

  def update?
    user == record.user
  end
end
