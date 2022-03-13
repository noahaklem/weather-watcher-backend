class Api::V1::ForecastsController < ApplicationController

  def index
    # take user locations and put them into ForecastFacade
    forecast = ForecastFacade.get_forecast('denver')
    render json: ForecastSerializer.new(forecast)
  end

  def create
    if logged_in
      forecast = ForecastFacade.get_forecast({current_user, params[:city]})
      debugger
      render json: ForecastSerializer.new(forecast)
    end
    # I will need a way to start the coordinate services and weather services I created with params[:location]
  end

  private

  def forecast_params
    params.require(:location).permit(:city)
  end
end
