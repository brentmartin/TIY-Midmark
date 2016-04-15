require 'bcrypt'

class User < ActiveRecord::Base
  has_secure_password
  has_many :marks
  validates_uniqueness_of :username
end
