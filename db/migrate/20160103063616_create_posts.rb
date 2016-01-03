class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id, :null => false, :limit => 8
      t.integer :title_id, :null => false, :limit => 8
      t.string :img_link, :null => false, :limit => 200, :default => 'http://www.techinsights.com/uploadedImages/Public_Website/Content_-_Primary/Teardowncom/Sample_Reports/sample-icon.png'
      t.string :video_link, :null => false, :limit => 200, :default => 'V8c5HfB4vnY'
      t.text :comment_text, :null => false

      t.timestamps null: false
    end
  end
end
