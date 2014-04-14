class AddSecondBodyToHints < ActiveRecord::Migration
  def change
    add_column :hints, :second_body, :string
  end
end
