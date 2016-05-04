# This migration comes from tenon (originally 20140512163915)
class RenameSerializedItemAttrs < ActiveRecord::Migration
  def change
    rename_column :tenon_item_versions, :serialized_item, :attrs
  end
end
