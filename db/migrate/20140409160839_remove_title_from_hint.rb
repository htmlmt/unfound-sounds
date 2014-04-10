class RemoveTitleFromHint < ActiveRecord::Migration
  def up
    remove_column :hints, :title
  end

  def down
    add_column :hints, :title, :string
  end
end
