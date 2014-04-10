class RemoveKindFromHint < ActiveRecord::Migration
  def up
    remove_column :hints, :kind
  end

  def down
    add_column :hints, :kind, :string
  end
end
