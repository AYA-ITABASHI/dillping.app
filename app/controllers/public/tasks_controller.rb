class Public::TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    @tasks = Task.new(task_params)
    @tasks.save
    redirect_to public_tasks_path
  end

  def edit
  end

  private
   def task_params
    params.require(:task).permit(:process, :start_time, :finish_time, :event_id, :member_id)
   end
end
