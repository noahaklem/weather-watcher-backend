class Forecast 
  attr_reader :current_weather, :daily_weather

  def initialize(data)
    @current_weather = data[:current]
    @daily_weather = data[:daily].first(5)
  end
end