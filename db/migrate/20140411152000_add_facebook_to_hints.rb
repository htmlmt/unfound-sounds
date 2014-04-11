class AddFacebookToHints < ActiveRecord::Migration
  def change
    add_column :hints, :facebook, :string
  end
end
