class AddFriCloseToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :fri_close, :timestamp
  end
end
