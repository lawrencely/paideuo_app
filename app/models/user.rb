class User < ActiveRecord::Base
  has_secure_password

  has_many :categories
  has_many :tasks, :through => :categories
end