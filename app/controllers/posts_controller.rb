class PostsController < ApplicationController
  get '/posts' do
    logged_in? ? (erb :'posts/posts') : (redirect '/')
  end

  get '/posts/new' do
    logged_in? ? (erb :'posts/new_post') : (redirect '/')
  end

  post '/posts/new' do
    if params[:title].empty? || params[:content].empty?
      flash[:message] = 'Title and content fields cannot be empty!'
      erb :'posts/new_post'
    else
      @post = Post.create(title: params[:title], content: params[:content])
      @post.user = current_user
      @post.save
      redirect "/posts/#{@post.id}/#{@post.slug}"
    end
  end

  delete '/posts/:id/delete' do
    @post = Post.find_by(id: params[:id])
    if @post.user.id = current_user.id
      @post.destroy
      redirect '/posts'
    else
      redirect "/posts/#{@post.id}/#{@post.slug}"
    end
  end

  get '/posts/:id/edit' do
    @post = Post.find_by(id: params[:id])
    erb :'posts/edit_post'
  end

  patch '/posts/:id/edit' do
    @post = Post.find_by(id: params[:id])
    if @post.user.id = current_user.id && !params[:title].empty? || !params[:content].empty?
      @post.title = params[:title]
      @post.content = params[:content]
      @post.save
    end

    redirect "/posts/#{@post.id}/#{@post.slug}"
  end

  get '/posts/:id/:slug' do
    @post = Post.find_by(id: params[:id])
    logged_in? ? (erb :'posts/show_post') : (redirect '/')
  end
end
