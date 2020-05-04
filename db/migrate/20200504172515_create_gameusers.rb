class CreateGameusers < ActiveRecord::Migration[6.0]
  def change
    create_table :gameusers do |t|
      t.integer :score
      t.belongs_to :users
      t.belongs_to :games
    end
  end
end
