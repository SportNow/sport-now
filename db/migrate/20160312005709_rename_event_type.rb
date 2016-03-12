class RenameEventType < ActiveRecord::Migration
  def change
    change_column :events, :type, 'boolean USING CAST ("type" AS boolean)'
    rename_column :events, :type, :is_competitive
  end
end
