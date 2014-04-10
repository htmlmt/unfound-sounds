class AddThumbnailToHints < ActiveRecord::Migration
  def change
    add_column :hints, :thumbnail, :string
  end
end
