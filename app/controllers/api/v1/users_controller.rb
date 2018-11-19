class Api::V1::UsersController < Api::V1::BaseController

  before_action :set_user, only: [:show, :update]

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user), status: :created
    else
      render :new
    end
  end

  def show
    # @events_own = Event.where("user_id": @user.id)
    # @bookings = Booking.where("user_id": @user.id)
    # @bookings = []
    # @bookings.each do |i|
    #    @bookings << Event.find(i.event_id)
    # end
    # @reviews = Review.where("booking_id": @booking.id)
  end

  def update
    if @user.update(user_params)
      # redirect_to restaurant_path(@restaurant)
      render :show
    else
      render_error
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :wechat_id, :phone)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def render_error
    render json: { errors: @user.errors.full_messages },
      status: :unprocessable_entity
  end
end
