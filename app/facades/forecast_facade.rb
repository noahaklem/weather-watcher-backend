class ForecastFacade
  def self.get_forecast(input)
    debugger
    coordinates = CoordinatesService.get_coordinates(input)
    location = Location.new(user: User.first, latitude: coordinates[:lat], longitude: coordinates[:lng])
    Forecast.new(WeatherService.get_forecast(location))
  end
end