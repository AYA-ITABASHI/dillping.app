class Public::EventsController < ApplicationController

  def index
   @events = Event.includes(:tasks).all
  end

  def new
   @event= Event.new

  end


  def create
    @event= Event.new(event_params)
    @task = @event.tasks.build
    if @event.save
     redirect_to public_event_path(@event)
    else
     render :new
    end
  end

  def show
   @event = Event.find(params[:id])

  end

  def edit
   @event = Event.find(params[:id])
  end

  def update
   @event = Event.find(params[:id])
   @event.update(event_params)
   redirect_to public_events_path
  end

  def destroy
   @event = Event.find(params[:id])
   @event.destroy
   redirect_to public_events_path
  end

  private
   def event_params
     params.require(:event).permit(:title, :memo, :member_id, :task_id)
   end

end
