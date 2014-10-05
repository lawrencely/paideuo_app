class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new task_params
    if @task.save
      redirect_to tasks_path
    else
      render :new
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