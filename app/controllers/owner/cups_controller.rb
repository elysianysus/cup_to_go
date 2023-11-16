class Owner::CupsController < ApplicationController
  def index
    @cups = current_user.cups
  end
end
