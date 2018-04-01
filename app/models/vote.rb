class Vote < ActiveRecord::Base
   self.primary_keys = :user_id, :post_id
   belongs_to :user
   belongs_to :post
end
