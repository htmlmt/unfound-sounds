class AddFridayTitleToHints < ActiveRecord::Migration
  def change
    add_column :hints, :friday_title, :string
  end
end
