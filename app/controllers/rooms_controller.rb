class RoomsController < ApplicationController
  def index
    @user = User.all
     @rooms = Room.all
  end
  def new
    @room = Room.new
  end

  def create
    binding.pry
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def room_params
    params.require(:room).permit(:name,:explanation,:category_id)
  end

end
