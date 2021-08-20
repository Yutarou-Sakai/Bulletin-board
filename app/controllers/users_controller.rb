class UsersController < ApplicationController
  def show
  end

  def new
    @user = User.new(flash[:user])
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to mypage_path, notice: "ユーザー登録が完了しました"
    else
      redirect_to :back, flash: {
        user: user,
        error_messages: user.errors.full_messages
      }
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
