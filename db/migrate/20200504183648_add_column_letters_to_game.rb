class AddColumnLettersToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :letters, :string
  end
end
