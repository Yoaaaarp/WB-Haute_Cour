class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.float :price
      t.integer :stock
      t.float :capacity

      t.timestamps null: false
    end
  end
end
