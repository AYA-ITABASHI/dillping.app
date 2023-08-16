class Public::TasksController < ApplicationController
  def new
     @event = Event.find(params[:event_id])
    @task = @event.tasks.build
  end

  def create
   @event = Event.find(params[:event_id])
   @task = @event.tasks.build(task_params)
    if @task.save
      redirect_to public_event_path(@event)
    else
     render :new
    end
  end

  def edit
   @event = Event.find(params[:event_id])
   @task = Task.find(params[:id])
  end

  def update
    @event = Event.find(params[:event_id])
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to public_event_path(@event)
  end

  def destroy
   @event = Event.find(params[:event_id])
   @task = Task.find(params[:id])
   @task.destroy
   redirect_to public_event_path(@event)
  end

  private

  def task_params
    params.require(:task).permit(:process, :start_time, :finish_time, :member_id, :event_id)
  end
end