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
    end

     @markers = @products.map do |product|
      {
        lat: product.user.latitude,
        lng: product.user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { product: product })
      }
     end
  end

  def show
    @random_product = Product.pick_random
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
