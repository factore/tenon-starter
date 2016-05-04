# This migration comes from tenon (originally 20140515202140)
class RemoveContentColumns < ActiveRecord::Migration
  def change
    remove_column :tenon_pages, :content
    remove_column :tenon_posts, :content
  end
end
