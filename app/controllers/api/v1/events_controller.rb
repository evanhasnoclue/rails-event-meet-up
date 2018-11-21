class Api::V1::EventsController < Api::V1::BaseController


  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    # @user = User.find(params[:user_id])
    @event = Event.new(event_params)
    # @event.user = @user
    if @event.save
      render json: @event.to_json
    else
      render_error
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      render json: @event.to_json
    else
      render_error
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    head :no_content
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :time, :address, :latitude, :longitude, :deadline, :capacity, :photo, :user_id)
  end

  def render_error
    render json: { errors: @event.errors.full_messages },
      status: :unprocessable_entity
  end

end
