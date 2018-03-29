class PostsController < ApplicationController
  get '/posts' do
    logged_in? ? (erb :'posts/posts') : (redirect '/')
  end

  get '/posts/:id/:slug' do
    @post = Post.find_by(id: params[:id])
    logged_in? ? (erb :'posts/show_post') : (redirect '/')
  end
end
