class DropGenreFromTables < ActiveRecord::Migration[6.1]
  def change
    remove_column :artists, :genre_id
    remove_column :fullsets, :genre_id
  end
end
