class CupsController < ApplicationController
  # Skip authentication for index and show actions, please add show, :show later
  skip_before_action :authenticate_user!,  only: [:index, :show]

  def index
    @cups = Cup.all
    @cups = @cups.available_between(params[:start_date], params[:end_date]) if params[:start_date].present? && params[:end_date].present?
    
    @markers = @cups.geocoded.map do |cup|
      {
        lat: cup.latitude,
        lng: cup.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {cup: cup}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @cup = Cup.find(params[:id])
    @booking = Booking.new
  end

  def new
    @cup = Cup.new
  end

  def create
    @cup = Cup.new(cup_params)
    @cup.user = current_user
    if @cup.save
      redirect_to cup_path(@cup)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def cup_params
    params.require(:cup).permit(:name, :photo, :category, :location, :volume, :description, :price)
  end
end
