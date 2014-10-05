class TasksController < ApplicationController

  def index
    @task = Task.where :category_id => @current_user.tasks.category_id
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new task_params
    if @task.category_id = params[:category_id]
      @task.save
      redirect_to category_tasks_path(@task.id)
    else
      raise 'error'
    end
  end

  def edit
    @task = @current_task
  end

  def destroy
    task = @current_task
    task.destroy
    redirect_to tasks_path
  end

  def show
    @task = Task.find params[:id]
  end

  private
  def task_params
    params.require(:task).permit(:paideuo, :category_id, :partner_id, :datetime)
  end

end