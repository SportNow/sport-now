class CreateUserPreferences < ActiveRecord::Migration
  def change
    create_table :user_preferences do |t|
      t.integer :skill_level
      t.text :notes
      t.references :user, index: true, foreign_key: true
      t.references :sport, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
