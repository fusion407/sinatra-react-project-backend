class AddGenreBackToArtist < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :genre_id, :integer
  end
end
