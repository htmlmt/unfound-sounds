class AddThirdPlaceToHints < ActiveRecord::Migration
  def change
    add_column :hints, :third_place, :string
  end
end
