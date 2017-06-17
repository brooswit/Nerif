class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      barracks_status_dire
      t.integer :barracks_status_radiant
      t.integer :cluster
      t.integer :dire_score
      t.integer :dire_team_id
      t.integer :duration
      t.integer :engine
      t.integer :first_blood_time
      t.integer :flags
      t.integer :game_mode
      t.integer :human_players
      t.integer :leagueid
      t.integer :lobby_type
      t.integer :match_id
      t.integer :match_seq_num
      t.integer :negative_votes
      t.integer :players
      t.integer :positive_votes
      t.integer :pre_game_duration
      t.integer :radiant_score
      t.integer :radiant_team_id
      t.integer :radiant_win
      t.timestamp :start_time
      t.integer :tower_status_dire
      t.integer :tower_status_radiant

      t.timestamps
    end
  end
end
