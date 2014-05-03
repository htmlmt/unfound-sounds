class AddSunCloseToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sun_close, :timestamp
  end
end
