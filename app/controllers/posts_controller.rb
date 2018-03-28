class PostsController < ApplicationController

   get '/posts' do
      erb :'posts/posts'
   end
end
