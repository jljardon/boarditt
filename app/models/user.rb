class User < ActiveRecord::Base
  include Slugify::InstaceMethods
  extend Slugify::ClassMethods
  has_many :posts
  has_many :votes , through: :posts
  has_many :comments
  has_secure_password
end
