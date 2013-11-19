class CategoriesController < ApplicationController

  def index
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.create(params[:category])
    redirect_to root_path
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    Category.find(params[:id]).update_attributes(params[:category])
    redirect_to category_path        
  end
  
  def destroy
    Category.find(params[:id]).destroy
    redirect_to root_path
  end
  
end
