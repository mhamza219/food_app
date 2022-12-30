class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :food
      t.integer :food_quantity
      t.integer :beverage_quantity
      t.string :beverage

      t.timestamps
    end
  end
end
