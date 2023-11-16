class Owner::BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.where(cup_id: current_user.cups.pluck(:id))
  end

end
