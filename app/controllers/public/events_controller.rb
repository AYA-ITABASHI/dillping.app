class Public::EventsController < ApplicationController

  def new
   @event= Event.new
   @tasks = current_member.tasks
  end

  def index
   @events = current_member.events
  end

  def create
    @events= Event.new(event_params)
    @events.save
    redirect_to public_events_path
  end

  private
   def event_params
     params.require(:event).permit(:title, :task_id, :member_id)
   end
end
