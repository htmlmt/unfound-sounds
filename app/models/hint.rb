class Hint < ActiveRecord::Base
  attr_accessible :image, :post_id, :monday_title, :tuesday_title, :wednesday_title, :thursday_title, :friday_title, :member_title, :thumbnail, :place_thumbnail, :place_sprite, :first_place, :second_place, :third_place, :fourth_place, :fifth_place, :finder, :facebook, :first_body, :second_body, :third_body, :fourth_body, :fifth_body, :coupon_body, :first_sub, :second_sub, :third_sub, :fourth_sub, :fifth_sub, :coupon_sub, :members_coupon
  
  belongs_to :post
end