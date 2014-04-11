class AddFinderToHints < ActiveRecord::Migration
  def change
    add_column :hints, :finder, :string
  end
end
