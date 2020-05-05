class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :spelling_word
      t.integer :point_value

      t.timestamps
    end
  end
end
