class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to roots_path, notice: "新增會員成功"
    else
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,)
    end
end
