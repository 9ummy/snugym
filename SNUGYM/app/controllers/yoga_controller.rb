class YogaController < ApplicationController
  def index
    @yogas = Yoga.all
  end
  
  def new
    render yoga_new_path
  end
  
  def show
    @yoga = Yoga.find(params[:id])
  end
  
  def search
    if params[:search].blank?
      redirect_to yoga_path and return
    else
      @yogas = Yoga.all.where("name LIKE ?", "%#{params[:search]}%")
    end
  end

  
  
  def create
      @yoga = Yoga.new(name: params[:name],
                  location: params[:location], 
                  capacity: params[:capacity], 
                  description: params[:description], 
                  locker_room: params[:locker_room],
                  shower_room: params[:shower_room],
                  price_1m: params[:price_1m],
                  price_3m: params[:price_3m],
                  price_12m: params[:price_12m])
                  
      if @yoga.save
        redirect_to yoga_path
      else
        render :index
      end
  end
end
