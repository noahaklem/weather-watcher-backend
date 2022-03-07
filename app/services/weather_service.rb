class WeatherService
  def self.get_forecast(coordinates)
    response = connection.get('data/2.5/onecall') do |f|
      f.params[:appid] = ENV['WEATHER_API_KEY']
      f.params[:lat] = coordinates.latitude
      f.params[:lon] = coordinates.longitude
      f.params[:units] = 'imperial'
      f.params[:exclude] = 'minutely, hourly'
    end
    JSON.parse(response.body, symbolize_names: true)
    
    # looks like: {:lat=>39.7385, :lon=>-104.9849, :timezone=>"America/Denver", :timezone_offset=>-25200, :current=>{:dt=>1645924111, :sunrise=>1645882654, :sunset=>1645922904, :temp=>30.07, :feels_like=>30.07, :pressure=>1028, :humidity=>53, :dew_point=>16.68, :uvi=>0, :clouds=>0, :visibility=>10000, :wind_speed=>1.05, :wind_deg=>350, :wind_gust=>1.45, :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}]

  end

  def self.connection
    Faraday.new('https://api.openweathermap.org/')
  end
end