class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id, :null => false, :limit => 8
      t.integer :title_id, :null => false, :limit => 8
      t.integer :poster_id, :null => false, :limit => 8
      t.integer :video_id, :null => false, :limit => 8
      t.text :comment_text, :null => false, :limit => 2000

      t.timestamps null: false
    end
  end
end
