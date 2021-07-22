class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @product = Product.find(params[:product_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @product = Product.find(params[:product_id])
    @booking.product = @product
    @booking.user = @user
    authorize @booking
    if @booking.save
      redirect_to profile_path
      # product_path(@product)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :status, :comment, :rating, :user, :product)
  end

end
