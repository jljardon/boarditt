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
      redirect '/posts/new'
    else
      @post = Post.create(title: params[:title], content: params[:content])
      @post.user = current_user
      @post.save
      redirect "/posts/#{@post.id}/#{@post.slug}"
    end
  end

  delete '/posts/:id/delete' do
    @post = Post.find_by(id: params[:id])
    if @post.user.id == current_user.id
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
     # raise params.inspect
    @post = Post.find_by(id: params[:id])
    if @post.user.id == current_user.id && !params[:post]["title"].empty? && !params[:post]["content"].empty?
      @post.update(params[:post])
      redirect "/posts/#{@post.id}/#{@post.slug}"
    else
      flash[:message] = 'Title and content fields cannot be empty!'
      redirect "/posts/#{@post.id}/edit"
    end
  end

  # params => {post : {title: "This is a title", content: "this is content"}, method: "post", value: "submit"}

  # The nested params hash looks like this :
  # {"post"=>{"title"=>"post for test - new", "content"=>"new new new post"}, "_method"=>"patch", "submit"=>"Post!", "id"=>"18"}

  get '/posts/:id/:slug' do
    @post = Post.find_by(id: params[:id])
    @vote = @post.votes.find_by(user_id: current_user.id, post_id: @post.id)
    logged_in? ? (erb :'posts/show_post') : (redirect '/')
  end
end
