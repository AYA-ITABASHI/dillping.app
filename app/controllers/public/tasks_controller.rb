class Public::TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all
  end

  def create
    @tasks = Task.new(task_params)
    @tasks.save
    redirect_to public_tasks_path
  end

  def edit
   @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update
    redirect_to public_tasks_path
  end

  private
   def task_params
    params.require(:task).permit(:process, :start_time, :finish_time, :event_id, :member_id)
   end
end
