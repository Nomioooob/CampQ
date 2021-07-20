class ProductsController < ApplicationController

  def index
    if params[:query].present?
      @query = params[:query]
      @products = Product.where("name LIKE ?", "%#{params[:query]}%")
    else
      @products = Product.all
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

end
