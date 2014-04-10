class AddMemberTitleToHints < ActiveRecord::Migration
  def change
    add_column :hints, :member_title, :string
  end
end
