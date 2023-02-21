class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  # See all tasks
  def index
    @tasks = Task.all
  end

  # See specific task page
  def show; end

  # Create new task
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  # Edit a task
  def edit; end

  def update
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  # Delete a task
  def destroy
    @task.destroy

    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
