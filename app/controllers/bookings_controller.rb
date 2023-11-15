class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
    # Assuming each user has_many :bookings
  end

  def show
    #will show one bookings
  end

  def new
    @booking = Booking.new
    #tbc
  end

  def create
    @booking = Booking.new
    #tbc
  end

  def edit
    #tbc
  end

  def update
    #tbc
  end

  def destroy
    #tbc
  end

end
