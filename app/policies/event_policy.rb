class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.present?
  end

  def create?
    user.present?
  end

  def destroy?
    user.present?
  end

  def edit? 
    user.present?
  end

  def update?
    true
  end
end
