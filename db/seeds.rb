# Users
User.create(:username => "skittles123", :email => "skittles@aol.com", :password => "rainbows")
User.create(:username => "becky567", :email => "starz@aol.com", :password => "kittens")
User.create(:username => "silverstallion", :email => "silver@aol.com", :password => "horses")
User.create(:username => "someguy", :email => "guy@aol.com", :password => "badpassword")
User.create(:username => "crazycatlady", :email => "iluvcatz@hotmail.com", :password => "catz123")

# Posts
Post.create(title: "Title of the post.",content: "Content of this post - Post 1 user id 1.", user_id: 1)
Post.create(title: "Title of the post.",content: "Content of this post - Post 2 user id 1.", user_id: 1)

Post.create(title: "Title of the post.",content: "Some URL - Post 1 user id 2.", user_id: 2)
Post.create(title: "Title of the post.",content: "Other URL - Post 2 user id 2.", user_id: 2)

Post.create(title: "Title of the post.",content: "This is a post - Post 1 user id 3.", user_id: 3)
Post.create(title: "Title of the post.",content: "This is another post - Post 2 user id 3.", user_id: 3)

Post.create(title: "Title of the post.",content: "Content of this post - Post 1 user id 4.", user_id: 4)
Post.create(title: "Title of the post.",content: "Content - Post 2 user id 4.", user_id: 4)

Post.create(title: "Title of the post.",content: "I love cats! - Post 1 user id 1.", user_id: 4)
Post.create(title: "Title of the post.",content: "I <3 my cats! - Post 12u ser id 1.", user_id: 4)

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


Comment.create(content: "Content of comment batch 1 of comments 1", user_id: 1, post_id: 1)
Comment.create(content: "Content of comment batch 1 of comments 2", user_id: 2, post_id: 2)
Comment.create(content: "Content of comment batch 1 of comments 3", user_id: 3, post_id: 3)
Comment.create(content: "Content of comment batch 1 of comments 4", user_id: 4, post_id: 4)
Comment.create(content: "Content of comment batch 1 of comments 5", user_id: 5, post_id: 5)
Comment.create(content: "Content of comment batch 2 of comments 1", user_id: 1, post_id: 1)
Comment.create(content: "Content of comment batch 2 of comments 2", user_id: 2, post_id: 2)
Comment.create(content: "Content of comment batch 2 of comments 3", user_id: 1, post_id: 3)
Comment.create(content: "Content of comment batch 2 of comments 4", user_id: 3, post_id: 6)
Comment.create(content: "Content of comment batch 2 of comments 5", user_id: 4, post_id: 7)
Comment.create(content: "Content of comment batch 2 of comments 6", user_id: 5, post_id: 8)
Comment.create(content: "Content of comment batch 2 of comments 7", user_id: 4, post_id: 9)
Comment.create(content: "Content of comment batch 2 of comments 8", user_id: 3, post_id: 10)
Comment.create(content: "Content of comment batch 2 of comments 9", user_id: 1, post_id: 1)

Comment.create(content: "Content of comment batch 3 of comments 1", user_id: 1, post_id: 2)
Comment.create(content: "Content of comment batch 3 of comments 2", user_id: 2, post_id: 2)
Comment.create(content: "Content of comment batch 3 of comments 3", user_id: 3, post_id: 2)
Comment.create(content: "Content of comment batch 3 of comments 4", user_id: 4, post_id: 2)
Comment.create(content: "Content of comment batch 3 of comments 5", user_id: 5, post_id: 2)

Comment.create(content: "Content of comment batch 4 of comments 1", user_id: 1, post_id: 3)
Comment.create(content: "Content of comment batch 4 of comments 2", user_id: 2, post_id: 3)
Comment.create(content: "Content of comment batch 4 of comments 3", user_id: 3, post_id: 3)
Comment.create(content: "Content of comment batch 4 of comments 4", user_id: 4, post_id: 3)
Comment.create(content: "Content of comment batch 4 of comments 5", user_id: 5, post_id: 3)

Comment.create(content: "Content of comment batch 5 of comments 1", user_id: 1, post_id: 4)
Comment.create(content: "Content of comment batch 5 of comments 2", user_id: 2, post_id: 4)
Comment.create(content: "Content of comment batch 5 of comments 3", user_id: 3, post_id: 5)
Comment.create(content: "Content of comment batch 5 of comments 4", user_id: 4, post_id: 5)
Comment.create(content: "Content of comment batch 5 of comments 5", user_id: 5, post_id: 6)

Comment.create(content: "Content of comment batch 5 of comments 1", user_id: 1, post_id: 7)
Comment.create(content: "Content of comment batch 5 of comments 2", user_id: 2, post_id: 8)
Comment.create(content: "Content of comment batch 5 of comments 3", user_id: 3, post_id: 9)
Comment.create(content: "Content of comment batch 5 of comments 4", user_id: 4, post_id: 10)
Comment.create(content: "Content of comment batch 5 of comments 5", user_id: 5, post_id: 8)
