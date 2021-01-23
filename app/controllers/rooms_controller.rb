class RoomsController < ApplicationController
  before_action :set_q, only: [:index, :search,:new]
  def index
    @user = User.all

     @rooms = Room.page(params[:page]).per(9).order(id: "DESC")
  end

  def new
    unless user_signed_in?
      redirect_to  new_user_registration_path
    end
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      @q = Room.ransack(params[:q])
      render :new
    end
  end
  def search 
    @results = @q.result(distinct: true)
  end

  private
  def room_params
    params.require(:room).permit(:name,:explanation,:category_id,:image)
  end

  def set_q
    @q = Room.ransack(params[:q])
  end

end
