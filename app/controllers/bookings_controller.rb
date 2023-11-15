class BookingsController < ApplicationController
  def create
    @cup = Cup.find(params[:cup_id])
    @booking = Booking.new(booking_params)
    @booking.cup = @cup
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :return_date)
  end
end
