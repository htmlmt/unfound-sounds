class AddSatCloseToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sat_close, :timestamp
  end
end
