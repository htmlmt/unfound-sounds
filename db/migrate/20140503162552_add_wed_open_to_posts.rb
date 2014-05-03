class AddWedOpenToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :wed_open, :timestamp
  end
end
