class User < ActiveRecord::Base
  has_many :posts
  attr_accessor :password_confirmation

  attr_accessible :name, :email, :password, :password_confirmation

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, presence: true
  validates_confirmation_of :password
  
  has_secure_password

end
