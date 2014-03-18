class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :album_title
      t.string :album_cover
      t.text :album_review
      t.string :place_title
      t.text :place_description
      t.text :pinpoint_description
      t.string :rdio
      t.string :city
      t.string :hidden_place
      t.string :map
      t.string :pinpoint_map
      t.datetime :created_at
      t.boolean :found
      t.string :url

      t.timestamps
    end
  end
end
