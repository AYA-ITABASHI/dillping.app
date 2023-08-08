class Public::TasksController < ApplicationController
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
    @task.update(task_params)
    redirect_to public_tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to public_events_path
  end

  private
   def task_params
    params.require(:task).permit(:process, :start_time, :finish_time, :event_id, :member_id)
   end
end
