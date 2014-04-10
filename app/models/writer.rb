class Writer < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :email, :password, :password_confirmation
  
  validates :email, :uniqueness => true
  
  has_many :posts
  has_many :hints, :through => :posts
end
