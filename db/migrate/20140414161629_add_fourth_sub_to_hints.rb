class AddFourthSubToHints < ActiveRecord::Migration
  def change
    add_column :hints, :fourth_sub, :string
  end
end
