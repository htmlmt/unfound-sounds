class AddPlaceSpriteToHints < ActiveRecord::Migration
  def change
    add_column :hints, :place_sprite, :string
  end
end
