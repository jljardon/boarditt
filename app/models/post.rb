class Post < ActiveRecord::Base
  include Slugify::InstaceMethods
  extend Slugify::ClassMethods
  belongs_to :user
  has_many :comments
  has_many :votes
end
