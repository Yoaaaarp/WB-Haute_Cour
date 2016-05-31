class AddCantonToUser < ActiveRecord::Migration
  def change
    add_column :users, :canton, :string
  end
end
