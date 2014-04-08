class AddFinderToPost < ActiveRecord::Migration
  def change
    add_column :posts, :finder, :string
  end
end
