class Team < ApplicationRecord
  validates :team_id, [
    presence: true,
    uniqueness: true,
    numericality: { greater_than_or_equal_to: 0 }
  }
end
