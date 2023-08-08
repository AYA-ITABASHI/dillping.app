class Public::HomesController < ApplicationController
  def top
  end

  def new
    @timelog = Timelog.new
  end

  def create
   @timelog = Timelog.new(timelog_params)
　 @timelog.save
  end

 private
  def timelog_params
   params.require(:timelog).permit(:measurement_time,:start_date,:finish_date,:diary)
  end
end

