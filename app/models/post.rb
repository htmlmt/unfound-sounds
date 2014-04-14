class Post < ActiveRecord::Base
  attr_accessible :album_cover, :album_review, :album_title, :city, :created_at, :found, :hidden_place, :map, :pinpoint_description, :pinpoint_map, :place_description, :place_title, :rdio, :url, :finder, :week_name, :week, :review_link
  
  scope :found, where(:found => true)
  scope :unfound, where(:found => false)
  
  has_many :hints
  belongs_to :writer

end
