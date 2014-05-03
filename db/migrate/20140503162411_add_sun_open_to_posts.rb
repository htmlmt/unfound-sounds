class AddSunOpenToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sun_open, :timestamp
  end
end
