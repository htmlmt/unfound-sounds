class RemoveThumbnailFromHint < ActiveRecord::Migration
  def up
    remove_column :hints, :thumbnail
  end

  def down
    add_column :hints, :thumbnail, :string
  end
end
