class BookmarkPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user == record.user
  end

  def new? 
    index?
  end

  def create? 
    index?
  end 

  def destroy?
    index?
  end
end
