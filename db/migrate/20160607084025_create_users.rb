class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :admin
      t.string :street
      t.string :city
      t.integer :npa
      t.string :canton

      t.timestamps null: false
    end
  end
end
