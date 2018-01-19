class User < ActiveRecord::Base
  has_many :tasks
  has_secure_password

  attr_accessor :username

end
