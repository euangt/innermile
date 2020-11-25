class BookmarkPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new? 
    true
  end

  def create? 
    true
  end 

  def destroy?
    user == record.user
  end
end
