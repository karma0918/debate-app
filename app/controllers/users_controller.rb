class UsersController < ApplicationController
  before_action :set_q
  def index

  end
  private
  def set_q
    @q = Room.ransack(params[:q])
  end
end
