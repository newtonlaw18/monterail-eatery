class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.float :price
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
