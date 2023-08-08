class Public::EventsController < ApplicationController

  def new
   @event= Event.new
   
  end

  def index
   @events = current_member.events
  end

  def create
    @tasks = current_member.tasks
    @event= Event.new(event_params)
    if @event.save
     redirect_to public_event_path(@event.id)
    else
     render :new
    end
  end
  
  def show
   @events = Event.find(params[:id])
   @event.tasks.build
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
     params.require(:event).permit(:title, :member_id, tasks_attributes: [:id, :process, :start_time, :first_time])
   end
end
