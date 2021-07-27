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
    start_date = params.fetch(:start_date, Date.today).to_date
    @bookings = Booking.where(user: @user, start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end
end
