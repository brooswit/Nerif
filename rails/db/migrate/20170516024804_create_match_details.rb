class CreateMatchDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :match_details do |t|
      t.integer :match_id
      t.boolean :radiant_win
      t.integer :duration
      t.integer :pre_game_duration
      t.integer :tower_status_radiant
      t.integer :tower_status_dire
      t.integer :barracks_status_radiant
      t.integer :barracks_status_dire
      t.integer :first_blood_time
      t.integer :human_players
      t.integer :positive_votes
      t.integer :negative_votes
      t.integer :radiant_score
      t.integer :dire_score

      t.timestamps
    end
  end
end
