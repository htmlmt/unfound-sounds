class AddTueOpenToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :tue_open, :timestamp
  end
end
