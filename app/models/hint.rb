class Hint < ActiveRecord::Base
  attr_accessible :image, :post_id, :monday_title, :tuesday_title, :wednesday_title, :thursday_title, :friday_title, :member_title, :thumbnail, :place_thumbnail, :place_sprite, :first_place, :second_place, :third_place, :fourth_place, :fifth_place, :finder, :facebook
  
  belongs_to :post
end