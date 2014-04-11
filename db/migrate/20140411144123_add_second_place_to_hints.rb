class AddSecondPlaceToHints < ActiveRecord::Migration
  def change
    add_column :hints, :second_place, :string
  end
end
