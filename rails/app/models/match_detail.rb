class MatchDetail < ApplicationRecord
  validates :match_id, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :radiant_win, [
    presence: true, 
  ]
  validates :duration, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :pre_game_duration, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :tower_status_radiant, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :tower_status_dire, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :barracks_status_radiant, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :barracks_status_dire, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :first_blood_time, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :human_players, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :positive_votes, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :negative_votes, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :radiant_score, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :dire_score, [
    presence: true, 
    numericality: { greater_than_or_equal_to: 0 }
  ]
end
