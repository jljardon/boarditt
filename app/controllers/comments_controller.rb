class CommentsController < ApplicationController
  get '/comments/new/:post_id' do
    @post_id = params[:post_id]
    logged_in? ? (erb :'comments/new_comment') : (redirect '/')
  end

  post '/comments/new/:post_id' do
    if params[:content].empty?
      flash[:message] = 'The content of a comment cannot be empty.'
      redirect "/comments/new/#{params[:post_id]}"
    else
      Comment.create(content: params[:content], user_id: current_user.id, post_id: params[:post_id])
      @post = Post.find_by(id: params[:post_id])
      redirect "/posts/#{@post.id}/#{@post.slug}"
    end
  end

  delete '/comments/:id/delete' do
    @comment = Comment.find_by(id: params[:id])
    @user = current_user
    if @comment.user.id == @user.id
      @comment.destroy
      flash[:message] = 'Your comment was deleted.'
    end
    erb :'users/show_user'
  end

  get '/comments/:id/edit' do
    @comment = Comment.find_by(id: params[:id])
    logged_in? ? (erb :'comments/edit_comment') : (redirect '/')
  end

  patch '/comments/:id/edit' do
    @comment = Comment.find_by(id: params[:id])
    @user = current_user
    if @comment.user.id == @user.id && !params[:content].empty?
      @comment.content = params[:content]
      @comment.save
      redirect :"/posts/#{@comment.post.id}/#{@comment.post.slug}"
    else
      flash[:message] = 'The content of a comment cannot be empty.'
      redirect "/comments/#{@comment.id}/edit"
    end

  end
end
