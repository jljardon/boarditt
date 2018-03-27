# Users
User.create(:username => "skittles123", :email => "skittles@aol.com", :password => "rainbows")
User.create(:username => "becky567", :email => "starz@aol.com", :password => "kittens")
User.create(:username => "silverstallion", :email => "silver@aol.com", :password => "horses")
User.create(:username => "someguy", :email => "guy@aol.com", :password => "badpassword")
User.create(:username => "crazycatlady", :email => "iluvcatz@hotmail..com", :password => "catz123")

# Posts
Post.create(content: "Content of this post - Post 1 user id 1.", user_id: 1)
Post.create(content: "Content of this post - Post 2 user id 1.", user_id: 1)

Post.create(content: "Some URL - Post 1 user id 2.", user_id: 2)
Post.create(content: "Other URL - Post 2 user id 2.", user_id: 2)

Post.create(content: "This is a post - Post 1 user id 3.", user_id: 3)
Post.create(content: "This is another post - Post 2 user id 3.", user_id: 3)

Post.create(content: "Content of this post - Post 1 user id 4.", user_id: 4)
Post.create(content: "Content - Post 2 user id 4.", user_id: 4)

Post.create(content: "I love cats! - Post 1 user id 1.", user_id: 4)
Post.create(content: "I <3 my cats! - Post 12u ser id 1.", user_id: 4)

# Votes
Vote.create(like: true, user_id: 1, post_id: 1)
Vote.create(like: true, user_id: 2, post_id: 1)
Vote.create(like: true, user_id: 5, post_id: 1)

Vote.create(like: true, user_id: 1, post_id: 3)
Vote.create(like: true, user_id: 2, post_id: 3)
Vote.create(like: true, user_id: 5, post_id: 3)

Vote.create(like: true, user_id: 4, post_id: 2)
Vote.create(like: true, user_id: 5, post_id: 3)
Vote.create(like: true, user_id: 3, post_id: 3)
