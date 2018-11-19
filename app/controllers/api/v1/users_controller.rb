class Api::V1::UsersController < Api::V1::BaseController

  # before_action :set_user, only: [:show, :edit, :update, :destroy]

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :wechat_id, :phone)
  end

end
