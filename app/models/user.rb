class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  
  validates :email, :uniqueness => true
  
  has_secure password
end
