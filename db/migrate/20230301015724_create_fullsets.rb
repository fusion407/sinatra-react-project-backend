class CreateFullsets < ActiveRecord::Migration[6.1]
  def change
    create_table :fullsets do |t|
      t.string :title
      t.integer :rating
      t.string :video_link
      t.integer :artist_id
      t.integer :event_id
      t.timestamps
    end
  end
end
