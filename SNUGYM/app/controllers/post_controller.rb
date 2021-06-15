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
    @post.save

    redirect_to '/post/index'
    

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
