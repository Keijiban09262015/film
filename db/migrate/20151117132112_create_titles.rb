class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
      t.date :comming
      t.integer :type

      t.timestamps null: false
    end
  end
end
