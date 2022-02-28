class ForecastFacade
  def self.get_forecast(input)
    coordinates = CoordinatesService.get_coordinates(input)
    location = Location.new(input, coordinates)
    weather = WeatherService(location)
    debugger

    #will need to send the information from weather into a forecast model
  end
end