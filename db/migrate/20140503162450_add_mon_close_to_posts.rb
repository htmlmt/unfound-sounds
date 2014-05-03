class AddMonCloseToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :mon_close, :timestamp
  end
end
