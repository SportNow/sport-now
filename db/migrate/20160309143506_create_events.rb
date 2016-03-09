class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :headline
      t.text :description
      t.float :lat
      t.float :lng
      t.string :address
      t.timestamp :datetime
      t.string :type
      t.integer :max_seats
      t.integer :skill_min
      t.integer :skill_max
      t.references :image, index: true, foreign_key: true
      t.references :sport, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
