class AddMonOpenToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :mon_open, :timestamp
  end
end
