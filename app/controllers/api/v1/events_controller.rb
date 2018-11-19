class Api::V1::UsersController < Api::V1::BaseController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end
end
