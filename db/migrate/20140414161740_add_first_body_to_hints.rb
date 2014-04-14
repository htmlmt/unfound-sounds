class AddFirstBodyToHints < ActiveRecord::Migration
  def change
    add_column :hints, :first_body, :string
  end
end
