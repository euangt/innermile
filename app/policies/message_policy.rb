class BookmarkPolicy < ApplicationPolicy
  class Scope < Scope
    def create?
      user == record.user
    end
  end
end
