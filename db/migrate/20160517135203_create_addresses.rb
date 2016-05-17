class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.integer :NPA
      t.string :canton
      t.string :country

      t.timestamps null: false
    end
  end
end
