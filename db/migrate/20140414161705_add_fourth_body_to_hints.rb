class AddFourthBodyToHints < ActiveRecord::Migration
  def change
    add_column :hints, :fourth_body, :string
  end
end
