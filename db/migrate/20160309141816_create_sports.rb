class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name
      t.text :description
      t.references :image, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
