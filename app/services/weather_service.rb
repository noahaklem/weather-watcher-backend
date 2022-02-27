class WeatherService
  def self.get_forecast(coordinates)
    response = connection.get('data/2.5/onecall') do |f|
      f.params[:appid] = ENV['WEATHER_API_KEY']
      f.params[:lat] = coordinates.latitude
      f.params[:lon] = coordinates.longitude
      f.params[:units] = 'imperial'
      f.params[:exclude] = 'minutely'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new('https://api.openweathermap.org/')
  end
end