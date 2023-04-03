class RemoveGenreFromArtist < ActiveRecord::Migration[6.1]
  def change
    remove_column :artists, :genre_id
  end
end
