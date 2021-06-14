class GymController < ApplicationController
  def index
  end
  def create
      @gym = Gym.new(name: params[:name],
                  location: params[:location], 
                  capacity: params[:capacity], 
                  description: params[:description], 
                  treadmil: params[:treadmil], 
                  barbell: params[:barbell],
                  leg_press: params[:leg_press],
                  locker_room: params[:locker_room],
                  price_1m: params[:price_1m],
                  price_3m: params[:price_3m],
                  price_12m: params[:price_12m])
                  
      if @gym.save
        redirect_to :index
      else
        render :index
      end
  end
end
