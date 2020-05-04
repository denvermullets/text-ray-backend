class CreateGamewords < ActiveRecord::Migration[6.0]
  def change
    create_table :gamewords do |t|
      t.belongs_to :games
      t.belongs_to :words

    end
  end
end
