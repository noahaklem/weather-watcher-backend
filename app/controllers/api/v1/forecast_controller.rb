class Api::V1::ForecastController < ApplicationController

  def index
    
  end

  def create
    forecast = ForecastFacade.get_forecast(params[:location])
    render json: ForecastSerializer.new(forecast)
    # I will need a way to start the coordinate services and weather services I created with params[:location]
  end
end
