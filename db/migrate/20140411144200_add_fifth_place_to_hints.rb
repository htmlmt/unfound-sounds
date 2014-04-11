class AddFifthPlaceToHints < ActiveRecord::Migration
  def change
    add_column :hints, :fifth_place, :string
  end
end
