class AddThuCloseToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :thu_close, :timestamp
  end
end
