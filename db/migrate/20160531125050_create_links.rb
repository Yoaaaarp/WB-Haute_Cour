class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :order_id
      t.integer :bottle_id
      t.integer :number

      t.timestamps null: false
    end
  end
end
