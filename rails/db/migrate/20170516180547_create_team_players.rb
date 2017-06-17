class CreateTeamPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_players do |t|
      t.integer :account_id
      t.integer :team_id

      t.timestamps
    end
  end
end
