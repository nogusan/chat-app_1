class MessegesController < ApplicationController

  def index
    @messege = Messege.new
    @room = Room.find(params[:room_id])
    @messeges = @room.messeges.includes(:user)
  end

  def create
    @room = Room.find(params[:room_id])
    @messege = @room.messeges.new(message_params)
    if @messege.save
      redirect_to room_messeges_path(@room)
    else
      @messages = @room.messeges.includes(:user)
      render :index
    end
  end

  private

  def message_params
    params.require(:messege).permit(:content,:image).merge(user_id: current_user.id)
  end
end
