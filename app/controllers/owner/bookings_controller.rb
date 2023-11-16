class Owner::BookingsController < ApplicationController




  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to owner_bookings_path
    else
      render "owner/bookings/index", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :return_date)
  end
end
