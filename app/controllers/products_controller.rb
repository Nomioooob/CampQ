class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = policy_scope(Product)
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @user = current_user
    @product.user = @user
    authorize @product
    if @product.save
      redirect_to product_path(@product)
    else
      render 'new'
    end
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :picture, :category)
  end

end
