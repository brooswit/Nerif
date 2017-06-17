class MatchPlayer < ApplicationRecord
  validates :match_id, [
    presence: true,
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :account_id, [
    presence: true,
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :slot, [
    presence: true,
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :hero_id, [
    presence: true,
    numericality: { greater_than_or_equal_to: 0 }
  ]
end
