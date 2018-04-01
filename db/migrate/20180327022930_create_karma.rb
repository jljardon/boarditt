class CreateKarma < ActiveRecord::Migration[5.1]
   def change
      create_table :votes, {:id => false} do |t|
         t.boolean :like
         t.integer :user_id
         t.integer :post_id
      end
        add_index :votes, [:user_id, :post_id], :unique => true
   end
end
