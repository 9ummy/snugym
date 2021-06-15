class ReviewController < ApplicationController
    def index
        @reviews = Review.all
    end
    
    def show
        @review = Review.find(params[:id])
    end
    
    def create
        @review = Review.new
        @review.title = params[:title]
        @review.point = params[:point]
        @review.text = params[:text]
    
        if @review.save
            redirect_to review_index_path
        end
    end
end
