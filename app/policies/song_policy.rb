class SongPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def edit?
    user.admin == true || (record.user_ids.include? user.id)
  end

  def destroy?
    user.admin == true || record.user_id == user.id
  end
end
