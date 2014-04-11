class AddFirstPlaceToHints < ActiveRecord::Migration
  def change
    add_column :hints, :first_place, :string
  end
end
