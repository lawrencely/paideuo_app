class CategoriesController < ApplicationController

  def index
    if @current_user.present?
    @category = Category.where :user_id => @current_user.id
  else
    redirect_to root_path
  end
  end

  def new
    blocker
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.user_id = @current_user.id
      @category.save
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
    @tasks = Task.where :category_id => params[:id]

  end

  private
  def category_params
    params.require(:category).permit(:heading, :user_id)
  end

  def blocker
    if @current_user.present?
    else
      flash[:notice] = "You must be registered to do anything stop trying to break me"
      redirect_to root_path
    end
  end

end