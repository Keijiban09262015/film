class CreateFilmVideos < ActiveRecord::Migration
  def change
    create_table :film_videos do |t|
      t.string :title_id, :null => false, :limit => 5
      t.string :video_link, :null => false, :limit => 200

      t.timestamps null: false
    end
  end
end
