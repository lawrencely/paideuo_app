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
    @task = @current_task
  end

  def update
  end

  def destroy
    task = @current_task
    task.destroy
    redirect_to tasks_path
  end

  def show
    @tasks = Task.where :category_id => params[:id]
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