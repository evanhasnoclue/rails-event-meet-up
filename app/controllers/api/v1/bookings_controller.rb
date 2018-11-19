class Api::V1::BookingsController < ActionController::Base
  def create
    @event =Event.find(params[:event_id])
    @user =User.find(params[:user_id])
    @booking= Booking.new(params[booking])
    @booking.event = @event
    @booking.user= @user
    if @booking.save
      redirect_to user_path(@user), status: :created

    else
      render_error
    end
  end

  def destroy
    @event =Event.find(params[:event_id])
    @event.destroy
    head :no_content

  end

  private


  def render_error
    render json: { errors: @booking.errors.full_messages },
      status: :unprocessable_entity
  end
end
