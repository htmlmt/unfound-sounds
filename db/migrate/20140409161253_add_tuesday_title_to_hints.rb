class AddTuesdayTitleToHints < ActiveRecord::Migration
  def change
    add_column :hints, :tuesday_title, :string
  end
end
