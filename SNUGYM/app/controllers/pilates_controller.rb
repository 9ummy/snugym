class PilatesController < ApplicationController
  def index
    @pilates = Pilate.all
  end
  
  def new
    render pilates_new_path
  end
  
  def show
    @pilate = Pilate.find(params[:id])
  end
    
  def create
    @pilate = Pilate.new(name: params[:name],
                location: params[:location], 
                capacity: params[:capacity], 
                description: params[:description], 
                locker_room: params[:locker_room],
                shower_room: params[:shower_room],
                price_1m: params[:price_1m],
                price_3m: params[:price_3m],
                price_12m: params[:price_12m])
                    
    if @pilate.save
      redirect_to pilates_path
    else
      render :index
    end
  end
end
