class Public::TasksController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @task = @event.tasks.build
  end

  def create
   @event = Event.find(params[:event_id])
   @task = Task.new(task_params)
    if @task.save
      redirect_to public_event_path(@event)
    else
     render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:process, :start_time, :finish_time, :member_id, :event_id)
  end
end