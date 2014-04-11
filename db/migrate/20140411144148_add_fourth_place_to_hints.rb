class AddFourthPlaceToHints < ActiveRecord::Migration
  def change
    add_column :hints, :fourth_place, :string
  end
end
