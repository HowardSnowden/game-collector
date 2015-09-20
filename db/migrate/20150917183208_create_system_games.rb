class CreateSystemGames < ActiveRecord::Migration
  def change
    create_table :system_games do |t|
      t.integer :game_id
      t.integer :system_id
      t.timestamps
    end
  end
end
