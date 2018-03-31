class CommentsController < ApplicationController
  get '/comments/new/:post_id' do
    @post_id = params[:post_id]
    erb :'comments/new_comment'
  end

  post '/comments/new/:post_id' do
    Comment.create(content: params[:content], user_id: current_user.id, post_id: params[:post_id])
    @post = Post.find_by(id: params[:post_id])
    redirect "/posts/#{@post.id}/#{@post.slug}"
  end

end
