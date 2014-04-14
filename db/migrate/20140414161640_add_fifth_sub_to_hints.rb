class AddFifthSubToHints < ActiveRecord::Migration
  def change
    add_column :hints, :fifth_sub, :string
  end
end
