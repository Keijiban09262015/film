class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.integer :title_id, :null => false, :limit => 5
      t.string :img_link, :null => false, :limit => 300, :default => 'http://www.techinsights.com/uploadedImages/Public_Website/Content_-_Primary/Teardowncom/Sample_Reports/sample-icon.png'

      t.timestamps null: false
    end
  end
end
