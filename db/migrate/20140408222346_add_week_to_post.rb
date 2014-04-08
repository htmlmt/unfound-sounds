class AddWeekToPost < ActiveRecord::Migration
  def change
    add_column :posts, :week, :integer
  end
end
