class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @products = current_user.products.all
  end

  def edit
    @user = User.find(params[:id])
  end

end
