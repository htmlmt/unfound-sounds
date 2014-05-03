class AddSatOpenToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sat_open, :timestamp
  end
end
