class ParkingController < ApplicationController
  def index
    #Selecciona todos los parkings en caso no se reciban parámetros
    if !params.has_key?(:district) && !params.has_key?(:date) && !params.has_key?(:time)
      @parkings = Parking.all
    else
      #Realizar búsqueda
      fecha = Date.strptime(params[:date], "%d/%m/%Y")
      hora = Time.parse(params[:time].to_s)
      
      #Se ha recibido lista de características?
      if params.has_key?(:features)
        where_caracteristicas = " AND parkings.id IN (SELECT parking_id from parking_features_parkings WHERE parking_feature_id IN (?))"
      else
        where_caracteristicas = " AND ? IS NULL"
      end
      
      #Se ha recibido rango de precios?
      if params.has_key?(:price_range)
        case :price_range
        when 0
          where_rangoprecio = ""
        when 1
          where_rangoprecio = " AND price_per_hour < 5.0"
        when 2
          where_rangoprecio = " AND price_per_hour BETWEEN 5.0 AND 10.0"
        when 3
          where_rangoprecio = " AND price_per_hour BETWEEN 10.0 AND 15.0"
        when 4
          where_rangoprecio = " AND price_per_hour > 15.0"
        end
      end
        
      #@parkings = Parking.where(district: params[:district], start_date params[:date], end_date: params[:date])
      #@parkings = Parking.joins(:parking_schedules, :parking_features)
      #@parkings = Parking.joins("JOIN parking_schedules ON parking_schedules.parking_id JOIN parking_features_parkings ON parking_features_parkings.parking_id")
      @parkings = Parking.joins(:parking_schedules)
      .where("district_id = ? AND start_date <= ? AND end_date >= ? 
      AND parking_schedules.day_of_week = ? AND parking_schedules.start_time <= ? 
      AND parking_schedules.end_time >= ?" + where_caracteristicas.to_s + where_rangoprecio.to_s,
      params[:district], fecha, fecha, fecha.wday, hora.strftime("%H:%M:%S"), hora.strftime("%H:%M:%S"),
      params[:features])
    end
    @districts = District.all
    @features = ParkingFeature.all
  end

  def details
    @parking = Parking.find(params[:id])
    @avg_rating = Rating.average(:value) #@parking.ratings.id.sum / @parking.ratings.id.size.to_f
  end
end
