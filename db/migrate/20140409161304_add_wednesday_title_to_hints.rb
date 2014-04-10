class AddWednesdayTitleToHints < ActiveRecord::Migration
  def change
    add_column :hints, :wednesday_title, :string
  end
end
