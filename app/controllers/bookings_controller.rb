class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
    # Assuming each user has_many :bookings
  end

  def new
    @cup = Cup.find(params[:cup_id])
    @booking = Booking.new
  end

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
