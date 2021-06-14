class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to gym_index_path
    else
      flash.now[:alert] = "invalid ID or password"
      render 'new'
    end
  end
end
