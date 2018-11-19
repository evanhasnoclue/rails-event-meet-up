class Api::V1::UsersController < Api::V1::BaseController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @event = Event.new
    @event.user = @user
    if @event.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def render_error
    render json: { errors: @event.errors.full_messages },
      status: :unprocessable_entity
  end

end
