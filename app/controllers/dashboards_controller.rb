class DashboardsController < ApplicationController

  def profile
    @user = User.find(params[:id])
    @booking = Booking.find(params[:user])
    # @listing =
  end
end
