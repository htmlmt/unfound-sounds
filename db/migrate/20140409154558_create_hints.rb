class CreateHints < ActiveRecord::Migration
  def change
    create_table :hints do |t|
      t.integer :post_id
      t.string :title
      t.integer :kind
      t.string :image
      t.string :thumbnail

      t.timestamps
    end
  end
end
