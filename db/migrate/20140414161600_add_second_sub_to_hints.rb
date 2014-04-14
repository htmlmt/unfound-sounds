class AddSecondSubToHints < ActiveRecord::Migration
  def change
    add_column :hints, :second_sub, :string
  end
end
