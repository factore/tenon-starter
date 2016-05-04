# This migration comes from tenon (originally 20150928230951)
class RemoveUniqueKeyFromTenonPages < ActiveRecord::Migration
  def change
    remove_column :tenon_pages, :unique_key, :string
  end
end
