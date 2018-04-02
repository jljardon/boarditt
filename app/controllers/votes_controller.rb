class VotesController < ApplicationController
  post '/votes/:id' do
    @post = Post.find_by(id: params[:id])
    @vote = @post.votes.find_by(user_id: current_user.id, post_id: @post.id)
    if @vote.nil?
      @vote = Vote.create(like: params[:vote],user_id: current_user.id, post_id: @post.id)
      @post.votes.push(@vote)
    else
      @vote.update!(like: params[:vote])
    end
    redirect "/posts/#{@post.id}/#{@post.slug}"
  end
end
