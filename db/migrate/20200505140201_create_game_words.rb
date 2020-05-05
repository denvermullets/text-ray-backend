class CreateGameWords < ActiveRecord::Migration[6.0]
  def change
    create_table :game_words do |t|
      t.integer :game_id
      t.integer :word_id

      t.timestamps
    end
  end
end
