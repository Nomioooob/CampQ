class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  skip_after_action :verify_policy_scoped, only: :index
  before_action :set_product, only: %i[show destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      # @products = policy_scope(Product.where("name LIKE ?", "%#{params[:query]}%"))
      @products = Product.search_by_name(@query)
    else
      @products = policy_scope(Product)
      # @products = Product.all
    end
  end

  def show
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
    authorize @product
    @product.destroy
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :picture, :category, photos: [])
  end
end
