class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy]

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
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    authorize @booking
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to products_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :status, :comment, :rating, :user, :product)
  end
end
