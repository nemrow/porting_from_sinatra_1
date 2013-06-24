class SessionsController < ApplicationController

  def new
    # ...
  end

  def create
    if User.authenticate(params[:user][:name], params[:user][:password])
      @user = User.find_by_name(params[:user][:name])
      session[:user] = @user.id
      redirect '/'
    else
      @errors = {error: "Invalid name or password."}
      erb :login
    end
  end

  def destroy
    session.clear
    redirect '/'
  end
end
