class CreateArtistSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :artist_songs do |t|
      t.integer :song_id 
      t.integer :artist_id
    end
  end
end
