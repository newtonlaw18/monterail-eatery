class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :restaurant, foreign_key: true
      t.references :meal, foreign_key: true
      t.string :name
      t.float :price
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
