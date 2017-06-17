class Match < ApplicationRecord
  validates :match_id, [
    presence: true, 
    uniqueness: true,
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :match_seq_num, [
    presence: true,
    uniqueness: true,
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :start_time, [
    presence: true
  ]
  validates :lobby_type, [
    presence: true,
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :radiant_team_id, [
    presence: true,
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :dire_team_id, [
    presence: true,
    numericality: { greater_than_or_equal_to: 0 }
  ]

  validates :engine, [
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :cluster, [
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :flags, [
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :leagueid, [
    numericality: { greater_than_or_equal_to: 0 }
  ]
  validates :game_mode, [
    numericality: { greater_than_or_equal_to: 0 }
  ]
end
