class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.string :desc
      t.string :vineyard
      t.string :grape
      t.string :image

      t.timestamps null: false
    end
  end
end
