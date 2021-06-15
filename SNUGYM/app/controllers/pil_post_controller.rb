class PilPostController < ApplicationController
  def index
    @pil_posts = Post.all
  end

  def new1
  end

  def create
    @pil_post = Post.new
    @pil_post.number = params[:number]
    @pil_post.time = params[:time]
    @pil_post.title = params[:title]

    if @pil_post.save
      redirect_to '/pil_post/index'
    end
  end
  
  def show
    @pil_post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end
  
  def destroy
    @pil_post = Post.find(params[:id])
    @pil_post.destroy
    
    redirect_to '/pil_post/index'
  end
end
