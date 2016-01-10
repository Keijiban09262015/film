class CreateFilmVideos < ActiveRecord::Migration
  def change
    create_table :film_videos do |t|
      t.integer :title_id, :null => false, :limit => 5
      t.string :video_link, :null => false, :limit => 200, :default => 'V8c5HfB4vnY'

      t.timestamps null: false
    end
  end
end
