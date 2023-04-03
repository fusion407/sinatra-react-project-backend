class RemoveArtistFromEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :artist_id
  end
end
