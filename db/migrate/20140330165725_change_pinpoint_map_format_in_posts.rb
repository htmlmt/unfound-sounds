class ChangePinpointMapFormatInPosts < ActiveRecord::Migration
  def up
    change_column :posts, :pinpoint_map, :text
  end

  def down
    change_column :posts, :pinpoint_map, :string
  end
end
