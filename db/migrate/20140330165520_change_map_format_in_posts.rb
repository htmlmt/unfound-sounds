class ChangeMapFormatInPosts < ActiveRecord::Migration
  def up
    change_column :posts, :map, :text
  end

  def down
    change_column :posts, :map, :string
  end
end
