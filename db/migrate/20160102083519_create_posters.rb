class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.string :title_id, :null => false, :limit => 5
      t.string :img_link, :null => false, :limit => 200

      t.timestamps null: false
    end
  end
end
