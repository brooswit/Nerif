class CreateMatchDetailPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :match_detail_players do |t|
      t.integer :match_id
      t.integer :account_id
      t.integer :duration

      t.integer :item_0
      t.integer :item_1
      t.integer :item_2
      t.integer :item_3
      t.integer :item_4
      t.integer :item_5
      t.integer :backpack_0
      t.integer :backpack_1
      t.integer :backpack_2

      t.integer :kills
      t.integer :deaths
      t.integer :assists

      t.integer :leaver_status
      t.integer :last_hits
      t.integer :denies
      t.integer :gold_per_min
      t.integer :xp_per_min
      t.integer :level
      t.integer :hero_damage
      t.integer :tower_damage
      t.integer :hero_healing
      t.integer :gold
      t.integer :gold_spent
      t.integer :scaled_hero_damage
      t.integer :scaled_tower_damage
      t.integer :scaled_hero_healing

      t.timestamps
    end
  end
end
