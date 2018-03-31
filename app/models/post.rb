class Post < ActiveRecord::Base
  include Slugify::InstaceMethods
  extend Slugify::ClassMethods
  belongs_to :user
  has_many :comments , :dependent => :destroy
  has_many :votes, :dependent => :destroy
end
