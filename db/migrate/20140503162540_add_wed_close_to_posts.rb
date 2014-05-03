class AddWedCloseToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :wed_close, :timestamp
  end
end
