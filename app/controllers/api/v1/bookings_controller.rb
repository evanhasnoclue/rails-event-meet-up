class Api::V1::BookingsController < Api::V1::BaseController
  def create
    @event = Event.find(params[:event_id])
    # @user = User.find(params[:user_id])
    @booking = Booking.new(booking_params)
    @booking.event = @event
    # @booking.user = @user
    if @booking.save
      # redirect_to user_path(@user), status: :created
      render json: @booking.to_json

    else
      render_error
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    head :no_content

  end

  private

  def booking_params
    params.require(:booking).permit(:user_id)
  end

  def render_error
    render json: { errors: @booking.errors.full_messages },
      status: :unprocessable_entity
  end
end
