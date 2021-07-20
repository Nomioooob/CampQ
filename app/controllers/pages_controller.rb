class PagesController < ApplicationController
  def home
    if params[:query].present?
      @query = params[:query]
      @products = Product.where("name LIKE ?", "%#{params[:query]}%")
    else
      @products = Product.all
    end
  end
end
