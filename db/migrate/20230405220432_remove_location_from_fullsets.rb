class RemoveLocationFromFullsets < ActiveRecord::Migration[6.1]
  def change
    remove_column :fullsets, :location_id
  end
end
