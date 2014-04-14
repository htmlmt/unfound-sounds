class AddThirdSubToHints < ActiveRecord::Migration
  def change
    add_column :hints, :third_sub, :string
  end
end
