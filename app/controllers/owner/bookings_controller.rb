class Owner::BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.where(cup_id: current_user.cups.pluck(:id))
  end

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
