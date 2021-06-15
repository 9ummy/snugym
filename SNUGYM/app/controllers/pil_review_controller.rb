class PilReviewController < ApplicationController
    def index
        @pil_reviews = Review.all
    end
    
    def show
        @pil_review = Review.find(params[:id])
    end
    
    def create
        @pil_review = Review.new
        @pil_review.title = params[:title]
        @pil_review.point = params[:point]
        @pil_review.text = params[:text]
    
        if @pil_review.save
            redirect_to '/pil_review/index'
        end
    end
    
    def destroy
        @pil_review = Review.find(params[:id])
        @pil_review.destroy

        redirect_to '/pil_review/index'
    end
end
