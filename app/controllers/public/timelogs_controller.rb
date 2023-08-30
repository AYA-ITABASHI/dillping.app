class Public::TimelogsController < ApplicationController
 def new
  @timelog = Timelog.new
 end

 def index
  @timelogs = Timelog.all
 end

 def create
  @timelog = Timelog.new(timelog_params)
  @timelog.save
  redirect_to public_timelogs_path
 end

 private
  def timelog_params
   params.require(:timelog).permit(:measurement_time,:start_date,:finish_date,:diary)
  end
end
