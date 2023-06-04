class Public::MembersController < ApplicationController
  def index
  end

  def show
    @member = Member.find(params[:id])
  end


  private
  def member_params
   params.require(:member).permit(:pen_name, :tool, :ideal, :email)
  end
end
