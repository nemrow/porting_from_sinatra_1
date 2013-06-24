class PostsController < ApplicationController

  def index
    @posts = Post.by_votes
  end
end
