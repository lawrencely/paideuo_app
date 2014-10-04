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
      redirect_to categories_path
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  def show
    @task = Task.find params[:id]
  end

end