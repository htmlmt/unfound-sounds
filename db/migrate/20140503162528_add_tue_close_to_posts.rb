class AddTueCloseToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :tue_close, :timestamp
  end
end
