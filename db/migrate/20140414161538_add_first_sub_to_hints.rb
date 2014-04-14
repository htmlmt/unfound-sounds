class AddFirstSubToHints < ActiveRecord::Migration
  def change
    add_column :hints, :first_sub, :string
  end
end
