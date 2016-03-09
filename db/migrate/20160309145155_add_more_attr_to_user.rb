class AddMoreAttrToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.integer :search_range
      t.text :bio
      t.date :birth_date
      t.boolean :gender
      t.references :image, index: true, foreign_key: true
    end
  end
end
