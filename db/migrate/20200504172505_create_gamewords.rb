class CreateGamewords < ActiveRecord::Migration[6.0]
  def change
    create_table :gamewords do |t|
      t.belongs_to :game
      t.belongs_to :word

    end
  end
end
