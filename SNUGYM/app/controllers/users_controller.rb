class UsersController < ApplicationController
  def new
  end
  
  def create
    user = User.new(name: params[:name],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])
    if user.save
      redirect_to new_session_path
    else
      flash.now[:alert] = "failed to register"
      render 'new'
    end
  end
end
