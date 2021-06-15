class ReviewController < ApplicationController
    def index
        render gym_index_path
    end
    
    def show
        @review = Review.find(params[:id])
    end
    
    def create
        render plain: params[:review]
    end
    
    
end
