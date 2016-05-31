class AddNpaToUser < ActiveRecord::Migration
  def change
    add_column :users, :NPA, :integer
  end
end
