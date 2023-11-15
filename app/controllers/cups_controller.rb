class CupsController < ApplicationController
  # Skip authentication for index and show actions, please add show, :show later
  skip_before_action :authenticate_user!,  only: [:index, :show]

  def index
    @cups = Cup.all
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
