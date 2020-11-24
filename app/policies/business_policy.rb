class BusinessPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def new?
    true
  end

  def create?
    true
  end

  def edit?
    record.user == user
    true
  end

  def show?
    true
  end

  def update?
    record.user == user
    true
  end

  def destroy?
    record.user == user
    true
  end
end
