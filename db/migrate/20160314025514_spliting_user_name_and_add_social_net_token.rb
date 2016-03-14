class SplitingUserNameAndAddSocialNetToken < ActiveRecord::Migration
  def change
    rename_column :users, :name, :first_name
    change_column :users, :gender, :string
    change_table :users do |t|
      t.string :last_name
      t.string :provider
      t.string :uid
    end
  end
end
