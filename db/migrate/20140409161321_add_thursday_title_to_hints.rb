class AddThursdayTitleToHints < ActiveRecord::Migration
  def change
    add_column :hints, :thursday_title, :string
  end
end
