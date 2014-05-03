class AddThuOpenToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :thu_open, :timestamp
  end
end
