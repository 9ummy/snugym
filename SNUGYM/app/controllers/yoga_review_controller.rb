class YogaReviewController < ApplicationController
    def index
        @yoga_reviews = Review.all
    end
    
    def show
        @yoga_review = Review.find(params[:id])
    end
    
    def create
        @yoga_review = Review.new
        @yoga_review.title = params[:title]
        @yoga_review.point = params[:point]
        @yoga_review.text = params[:text]
    
        if @yoga_review.save
            redirect_to '/yoga_review/index'
        end
    end
    
    def destroy
        @yoga_review = Review.find(params[:id])
        @yoga_review.destroy

        redirect_to '/yoga_review/index'
    end
end
