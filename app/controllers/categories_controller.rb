class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    @current_user
    if @category.save
        redirect_to categories_path
    else
      render :new
    end
  end

  def edit
    @category = @current_category
  end

  def destroy
    category = @current_category
    category.destroy
    redirect_to categories_path
  end

  def update
    category = Category.find params[:id]
    @current_user

   if   @current_user.id == category.user_id
        category.update category_params
        redirect_to category_path
    else
      raise "error"
    end
  end

  def show
    @category = Category.find params[:id]
  end

  private
  def category_params
    params.require(:category).permit(:heading, :user_id)
  end

end