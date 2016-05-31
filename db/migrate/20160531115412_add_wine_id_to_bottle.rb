class AddWineIdToBottle < ActiveRecord::Migration
  def change
    add_column :bottles, :wine_id, :integer
  end
end
