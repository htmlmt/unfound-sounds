class AddFriOpenToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :fri_open, :timestamp
  end
end
