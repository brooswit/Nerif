class CreateMatchPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :match_players do |t|
      t.integer :match_id
      t.integer :account_id
      t.integer :slot
      t.integer :hero_id

      t.timestamps
    end
  end
end
