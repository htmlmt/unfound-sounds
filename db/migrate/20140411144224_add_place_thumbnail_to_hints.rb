class AddPlaceThumbnailToHints < ActiveRecord::Migration
  def change
    add_column :hints, :place_thumbnail, :string
  end
end
