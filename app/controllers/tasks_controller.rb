class TasksController < ApplicationController
  def index
    @tasks_list = Task.all
  end

  def new
    @new_task = Task.new
  end

  def create
    @new_task = Task.new(task_params)
    @new_task.save
    redirect_to root_path
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task_to_edit = Task.find(params[:id])
    redirect_to root_path
  end

  def update
    @task_to_update = Task.find(params[:id])
    @task_to_update.update(task_params)
  end

  def destroy
    @task_to_delete = Task.find(params[:id])
    @task_to_delete.destroy

    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
