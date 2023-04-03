class AddArtistsToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :artist_id, :integer
  end
end
