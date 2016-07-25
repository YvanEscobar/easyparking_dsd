class ParkingController < ApplicationController
  def index
    @districts = District.all
  end

  def details
  end
end
