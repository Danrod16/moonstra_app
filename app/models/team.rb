class Team < ApplicationRecord
  validates :name ,presence: true, uniqueness: true

  def members
    self.users
  end

  def projects
    self.projects
  end
end
