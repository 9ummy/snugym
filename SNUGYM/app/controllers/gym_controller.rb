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
  
  def search
    if params[:search].blank?
      redirect_to gym_path and return
    else
      @gyms = Gym.search(params[:search])
    end
  end

  def detailsearch
    render gym_detailsearch_path
  end

  def detailsearchresult
    @gyms = Gym.where(["name LIKE ?", "%#{params[:searchname]}%"]) if params[:searchname].present?
    @gyms = Gym.where(["location LIKE ?", "%#{params[:searchlocation]}%"]).where(["capacity >= ?", params[:searchcapacity]]) if params[:searchcapacity].present? or params[:searchlocation].present?
    @gyms = Gym.where(["treadmill >= ?", params[:searchtreadmill]]) if params[:searchtreadmill].present?
    @gyms = Gym.where(["barbell >= ?", params[:searchbarbell]]) if params[:searchbarbell].present?
    @gyms = Gym.where(["leg_press >= ?", params[:searchleg_press]]) if params[:searchleg_press].present?
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
