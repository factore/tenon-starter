# This migration comes from tenon (originally 20141115154243)
class RemoveUnusedTenonPhotoColumns < ActiveRecord::Migration
  def change
    remove_column :tenon_photos, :file_file_size
    remove_column :tenon_photos, :file_file_name
    remove_column :tenon_photos, :file_content_type
  end
end
