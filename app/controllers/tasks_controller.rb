class TasksController < ApplicationController
  before_action :set_task, only: [:show]

  def set_task
    @task = Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end

  def show
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
