class AddWeekNameToPost < ActiveRecord::Migration
  def change
    add_column :posts, :week_name, :string
  end
end
