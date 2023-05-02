class AddLocationBackToFullsets < ActiveRecord::Migration[6.1]
  def change
    add_column :fullsets, :location_id, :integer
  end
end
