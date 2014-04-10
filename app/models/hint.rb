class Hint < ActiveRecord::Base
  attr_accessible :image, :post_id, :monday_title, :tuesday_title, :wednesday_title, :thursday_title, :friday_title, :member_title, :thumbnail
  
  belongs_to :post
end