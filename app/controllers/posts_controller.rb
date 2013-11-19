class PostsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.order(:category_id)
    @categories = Category.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = Post.create(params[:post])
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @categories = Category.all
  end

  def update
    Post.find(params[:id]).update_attributes(params[:post])
    redirect_to posts_path
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path 
  end

end
