class CommentsController < ApplicationController
  use Rack::Flash
  get '/comments/new/:post_id' do
    @post_id = params[:post_id]
    erb :'comments/new_comment'
  end

  post '/comments/new/:post_id' do
    Comment.create(content: params[:content], user_id: current_user.id, post_id: params[:post_id])
    @post = Post.find_by(id: params[:post_id])
    redirect "/posts/#{@post.id}/#{@post.slug}"
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
end
