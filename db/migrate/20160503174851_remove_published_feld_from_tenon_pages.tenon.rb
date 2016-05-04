# This migration comes from tenon (originally 20140520161213)
class RemovePublishedFeldFromTenonPages < ActiveRecord::Migration
  def change
    remove_column :tenon_pages, :published
  end
end
