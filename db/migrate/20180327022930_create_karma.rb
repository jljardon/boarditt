class CreateKarma < ActiveRecord::Migration[5.1]
   def change
      create_table :votes do |t|
         t.boolean :like
         t.integer :user_id
         t.integer :post_id
      end
   end
end
