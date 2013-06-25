class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    user = User.find(session[:user])
    post = Post.new(params[:post])
    user.posts << post
    if post.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

end
