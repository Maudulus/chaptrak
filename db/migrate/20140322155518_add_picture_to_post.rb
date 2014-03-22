class AddPictureToPost < ActiveRecord::Migration
  def up
    add_column :posts, :picture, :binary
  end

  def down
    remove_column :posts, :picture
  end
end
