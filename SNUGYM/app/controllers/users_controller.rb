class UsersController < ApplicationController
  def new
  end
  
  def create
    User.create(name: params[:name],
                password: params[:password],
                password_confirmation: params[:password_confirmation])
    redirect_to :root
  end
end
