class GymController < ApplicationController
  def index
    @gyms = Gym.all
  end
  
  def new
    render gym_new_path
  end
  
  def show
    @gym = Gym.find(params[:id])
  end
  
  def create
      @gym = Gym.new(name: params[:name],
                  location: params[:location], 
                  capacity: params[:capacity], 
                  description: params[:description], 
                  treadmill: params[:treadmill], 
                  barbell: params[:barbell],
                  leg_press: params[:leg_press],
                  locker_room: params[:locker_room],
                  shower_room: params[:shower_room],
                  price_1m: params[:price_1m],
                  price_3m: params[:price_3m],
                  price_12m: params[:price_12m])
                  
      if @gym.save
        redirect_to gym_path
      else
        render :index
      end
  end
end
