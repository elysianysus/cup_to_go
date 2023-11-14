class CupsController < ApplicationController
  def index
    @cups = Cup.all
    @cup = Cup.new
  end
end
