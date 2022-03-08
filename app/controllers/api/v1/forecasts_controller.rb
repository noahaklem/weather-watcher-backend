class Api::V1::ForecastsController < ApplicationController

  def index
    forecast = ForecastFacade.get_forecast("great falls")
    render json: ForecastSerializer.new(forecast)
  end

  def create
    forecast = ForecastFacade.get_forecast(params[:city])
    render json: ForecastSerializer.new(forecast)
    # I will need a way to start the coordinate services and weather services I created with params[:location]
  end

  private

  def forecast_params
    params.require(:location).permit(:city)
  end
end
