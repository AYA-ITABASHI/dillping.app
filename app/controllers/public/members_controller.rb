class Public::MembersController < ApplicationController
  def index
  end

  def show
    @member = Member.find(params[:id])
  end
  
   def edit
    @member = Member.find(params[:id])
   end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)

    redirect_to public_member_path(current_member.id)
  end

  private
  def member_params
   params.require(:member).permit(:pen_name, :tool, :ideal, :email)
  end
end
