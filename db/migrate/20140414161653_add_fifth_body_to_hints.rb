class AddFifthBodyToHints < ActiveRecord::Migration
  def change
    add_column :hints, :fifth_body, :string
  end
end
