class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def new1
  end

  def create
    @post = Post.new
    @post.number = params[:number]
    @post.time = params[:time]
    @post.title = params[:title]

    if @post.save
      redirect_to post_index_path
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to '/post/index'
  end
end
