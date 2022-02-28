class Api::V1::ForecastsController < ApplicationController

  def index
    forecast = ForecastFacade.get_forecast("great falls")
    render json: ForecastSerializer.new(forecast)
  end

  def create
    forecast = ForecastFacade.get_forecast(params[:location])
    render json: ForecastSerializer.new(forecast)
    # I will need a way to start the coordinate services and weather services I created with params[:location]
  end
end
