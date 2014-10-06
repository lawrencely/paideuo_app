class TasksController < ApplicationController

  def index
    @category = params[:category_id]
    @tasks = Task.where :id => @category

  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new task_params
    @category = params[:category_id]
    if @task.category_id = params[:category_id]
      @task.save
      redirect_to category_path(@category)
    else
      raise 'error'
    end
  end

  def edit
    @category = Category.find params[:category_id]
    @task = Task.find params[:id]
  end

  def update
    task = Task.find params[:id]
    @category = Category.find params[:category_id]
    task.update task_params
    redirect_to category_path(@category)
  end

  def destroy
    task = Task.find params[:id]
    category = Category.find params[:category_id]
    task.destroy
    redirect_to category_task_path(category,task)
  end

  def show
    @tasks = Task.where :category_id => params[:id]
    @category = Category.find params[:category_id]
  end

  private
  def task_params
    params.require(:task).permit(:paideuo, :category_id, :partner_id, :datetime)
  end
  def id_hope
    @current_user.tasks.each do |p|
      p.id
    end
  end

end