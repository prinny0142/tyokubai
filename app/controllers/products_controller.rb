class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    
  end

  def create
    product = Product.new(product_params)
    product.user_id = current_user.id
    product.save
    redirect_to user_path(current_user.id)
  end

  private
  def product_params
    params.require(:product).permit(:image, :name, :explain, :price)
  end
end
