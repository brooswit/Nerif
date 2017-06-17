class MatchDetailPlayer < ApplicationRecord
  validates :match_id, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :account_id, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :duration, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]

  validates :item_0, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :item_1, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :item_2, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :item_3, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :item_4, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :item_5, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]

  validates :backpack_0, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :backpack_1, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :backpack_2, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]

  validates :kills, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :deaths, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :assists, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]

  validates :leaver_status, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :last_hits, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :denies, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :gold_per_min, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :xp_per_min, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :level, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :hero_damage, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :tower_damage, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :hero_healing, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :gold, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :gold_spent, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :scaled_hero_damage, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :scaled_tower_damage, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :scaled_hero_healing, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
end
