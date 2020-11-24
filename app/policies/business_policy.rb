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
    user
  end

  def show?
    true
  end

  def update?
    user
  end

  def destroy?
    user
  end

  private

  def user
    record.user == user
  end
end
