class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :event, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :text
      t.timestamp :datetime

      t.timestamps null: false
    end
  end
end
