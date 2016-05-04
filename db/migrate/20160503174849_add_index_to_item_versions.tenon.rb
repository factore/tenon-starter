# This migration comes from tenon (originally 20140516135347)
class AddIndexToItemVersions < ActiveRecord::Migration
  def change
    add_index :tenon_item_versions, [:item_id, :item_type]
  end
end
