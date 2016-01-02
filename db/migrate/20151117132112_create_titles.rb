class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name, :null => false, :limit => 50
      t.string :comming, :default => 'comming soon', :limit => 20
      t.string :type_id, :null => false, :limit => 20

      t.timestamps null: false
    end
  end
end
