class AddMondayTitleToHints < ActiveRecord::Migration
  def change
    add_column :hints, :monday_title, :string
  end
end
