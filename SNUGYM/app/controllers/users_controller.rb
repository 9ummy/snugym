class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(name: params[:name],
                     password: params[:password],
                     password_confirmation: params[:password_confirmation])
    redirect_to :root
  end
end
