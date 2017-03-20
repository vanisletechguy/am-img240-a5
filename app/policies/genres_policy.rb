class GenrePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    user.id != nil
  end
  def edit?
    user.admin == true
  end

  def destroy?
    user.admin == true
  end
end
