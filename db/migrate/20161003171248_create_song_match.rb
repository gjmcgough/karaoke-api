class CreateSongMatch < ActiveRecord::Migration
  def change
    create_table :song_matches do |t|
      t.integer :party_id
      t.integer  :song_id
      t.integer  :user_id

      t.timestamps
    end
  end
end
