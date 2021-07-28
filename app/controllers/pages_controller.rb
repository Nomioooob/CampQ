class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      # @products = Product.where("name ILIKE ?", "%#{params[:query]}%")
      @products = Product.search_by_name(params[:query])
    else
      @products = Product.all
    end
  end

   def profile
    @user = current_user
    @bookings = current_user.bookings
    @rental_bookings =  current_user.bookings_as_owner
  end
end
