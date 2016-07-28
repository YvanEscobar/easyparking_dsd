class ParkingController < ApplicationController
  def index
    @districts = District.all
    @features = ParkingFeature.all
  end

  def details
  end
end
