class ForecastFacade
  def self.get_forecast(input)
    coordinates = CoordinatesService.get_coordinates(input)
    location = Location.new(input, coordinates)
    Forecast.new(WeatherService.get_forecast(location))
    debugger
  end
end