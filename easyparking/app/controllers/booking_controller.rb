class BookingController < ApplicationController
  def index
    @parking = Parking.find(params[:parking_id])
    if params.has_key?(:time) then
      @selected_time = params[:time]
    else
       @selected_time = "".to_s
    end
  end
  
  def confirmation
    @booking = Booking.new()
    @booking.save
    
  end
end
