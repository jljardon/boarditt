class PostsController < ApplicationController
  # use Rack::Flash
  get '/posts' do
    logged_in? ? (erb :'posts/posts') : (redirect '/')
  end

  get '/posts/new' do
    logged_in? ? (erb :'posts/new_post') : (redirect '/')
  end

  post '/posts/new' do
    if params[:title].empty? || params[:content].empty?
      flash[:message] = 'Title and content fields cannot be empty!'
      erb :'/posts/new_post'
    else
      @post = Post.create(title: params[:title], content: params[:content])
      @post.user = current_user
      @post.save
      redirect "/posts/#{@post.id}/#{@post.slug}"
    end
  end

  get '/posts/:id/:slug' do
    @post = Post.find_by(id: params[:id])
    logged_in? ? (erb :'posts/show_post') : (redirect '/')
  end
end
