class Api::V1::ReviewsController < Api::V1::BaseController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking

    if @review.save
      # redirect_to user_path(@review.user), status: :created
      render json: @review.to_json
    else
      render_error
    end
  end

  private
  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end

  def render_error
    render json: { errors: @review.errors.full_messages },
      status: :unprocessable_entity
  end
end
