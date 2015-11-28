class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
      t.string :comming, :default => 'comming soon'
      t.integer :type_id

      t.timestamps null: false
    end
  end
end
