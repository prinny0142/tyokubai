class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @products = current_user.products.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path
  end

  private
  def user_params
    params.require(:user).permit(:user_image, :name, :nickname, :email, :postcode, :address, :tel)
  end
end
