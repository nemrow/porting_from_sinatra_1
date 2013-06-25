class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    p params[:user]
    @user = User.new(params[:user])
    if @user.save
      session[:user] = @user.id
      redirect_to root_path
    else
      @errors = @user.errors
      puts @user.errors.keys
      redirect_to new_user_path
    end
  end

end
