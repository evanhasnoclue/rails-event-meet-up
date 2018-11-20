class Api::V1::UsersController < Api::V1::BaseController
  # skip_before_action :verify_authenticity_token
  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze
  before_action :set_user, only: [:show, :update]

  def login
    @user = User.find_or_create_by(wechat_id: wechat_user.fetch("openid"))
    render json: {
      userId: @user.wechat_id
    }
  end

  def wechat_user
  @wechat_response ||= RestClient.post(URL, wechat_params)
  @wechat_user ||= JSON.parse(@wechat_response.body)
  end

  def create
    @user = User.new(user_data)
    if @user.save
      render json: @user.to_json
    else
      render_error
    end
    # if @user.save
    #   redirect_to user_path(@user), status: :created
    # else
    #   render :new
    # end
  end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to user_path(@user), status: :created
  #   else
  #     render :new
  #   end
  # end

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
      render json: @user.to_json
    else
      render_error
    end
  end


  private

  def user_data
    params.require(:user_data).permit(:name, :wechat_id, :gender, :city, :province, :country, :avatar)
  end

  def user_params
    params.require(:user).permit(:name, :wechat_id, :gender, :city, :province, :country, :avatar)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def render_error
    render json: { errors: @user.errors.full_messages },
      status: :unprocessable_entity
  end

  def wechat_params
  {
    appid: ENV["APP_ID"],
    secret: ENV["APP_SECRET"],
    js_code: params[:code],
    grant_type: "authorization_code"
  }
  end

end
