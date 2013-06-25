class VoteController < ApplicationController
  
  def new
    @post = Post.find(params[:post_id])
    @post.add_or_update_vote(1, current_user)
    redirect_to root_path
  end
end
