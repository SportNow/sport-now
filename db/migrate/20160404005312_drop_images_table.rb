class DropImagesTable < ActiveRecord::Migration
  def change

    remove_column :events, :image_id
    remove_column :users, :image_id
    remove_column :sports, :image_id
    drop_table :images

    add_column :events, :image, :string
    add_column :users, :image, :string
    add_column :sports, :image, :string
  end
end
