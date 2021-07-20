class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    authorize @booking
    if @booking.save
      redirect_to product_path(@product)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    @booking.update(booking_params)

    redirect_to booking_path(@booking)
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :status, :comment, :rating, :user, :product)
  end

end
