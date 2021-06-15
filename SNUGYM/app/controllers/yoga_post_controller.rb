class YogaPostController < ApplicationController
  def index
    @yoga_posts = Post.all
  end

  def new1
  end

  def create
    @yoga_post = Post.new
    @yoga_post.number = params[:number]
    @yoga_post.time = params[:time]
    @yoga_post.title = params[:title]

    if @yoga_post.save
      redirect_to '/yoga_post/index'
    end
  end
  
  def show
    @yoga_post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end
  
  def destroy
    @yoga_post = Post.find(params[:id])
    @yoga_post.destroy
    
    redirect_to '/yoga_post/index'
  end
end
