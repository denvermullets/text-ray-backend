class CreateGameusers < ActiveRecord::Migration[6.0]
  def change
    create_table :gameusers do |t|
      t.integer :score
      t.belongs_to :user
      t.belongs_to :game
    end
  end
end
