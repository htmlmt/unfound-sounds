class AddThirdBodyToHints < ActiveRecord::Migration
  def change
    add_column :hints, :third_body, :string
  end
end
