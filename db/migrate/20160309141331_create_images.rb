class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :path
      t.string :url

      t.timestamps null: false
    end
  end
end
