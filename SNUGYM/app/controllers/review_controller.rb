class ReviewController < ApplicationController
    def index
        @reviews = Review.all
        render review_index_path
    end
    
    def show
        @review = Review.find(params[:id])
    end
    
    def create
        @review = Review.new(title: params[:title],
                             point: params[:point],
                             text: params[:text])
    
        if @review.save
            redirect_to review_index_path
        end
    end
end
