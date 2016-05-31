class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :text
      t.datetime :beginAt
      t.string :image

      t.timestamps null: false
    end
  end
end
