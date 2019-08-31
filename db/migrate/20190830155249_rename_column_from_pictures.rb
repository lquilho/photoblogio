class RenameColumnFromPictures < ActiveRecord::Migration[6.0]
  def change
    rename_column :pictures, :photo_ID, :photo_id
  end
end
