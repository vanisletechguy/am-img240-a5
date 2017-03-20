class GeneratorPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def generate_data?
    user.id != nil
  end

  def delete_data?
    user.admin == true
  end
end
