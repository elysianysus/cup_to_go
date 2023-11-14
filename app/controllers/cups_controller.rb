class CupsController < ApplicationController
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
