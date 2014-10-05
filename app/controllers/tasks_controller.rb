class TasksController < ApplicationController

  def index
    @tasks = Task.where :category_id => id_hope
    if @tasks.present?
    redirect_to category_tasks_path
  else
    raise 'error'
  end
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
  def id_hope
    @current_user.tasks.each do |p|
      raise 'error'
      p.id
    end
  end

end