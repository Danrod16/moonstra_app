class TeamsProject < ApplicationRecord
  belongs_to :team
  belongs_to :project
  has_many :users, through: :project_members
  STATUSES = ["pending", "accepted", "declined"]

  def accepted?
    self.status == "accepted"
  end

  def pending?
    self.status == "pending"
  end

  def declined?
    self.status == "declined"
  end
end
