class AddReviewLinkToPost < ActiveRecord::Migration
  def change
    add_column :posts, :review_link, :string
  end
end
