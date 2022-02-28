class ForecastSerializer
  include FastJsonapi::ObjectSerializer
  set_id { nil }
  attributes :current_weather, :daily_weather

  attributes :current_weather do |object|
    {
      "date": Time.at(object.current_weather[:dt]),
      "sunrise": Time.at(object.current_weather[:sunrise]),
      "sunset": Time.at(object.current_weather[:sunset]),
      "tempature": object.current_weather[:temp],
      "feels_like": object.current_weather[:feels_like],
      "humidity": object.current_weather[:humidity],
      "uvi": object.current_weather[:uvi],
      "visibility": object.current_weather[:visibility],
      "conditions": object.current_weather[:weather][0][:description],
      "icon": object.current_weather[:weather][0][:icon]
    }
  end
  
  attributes :daily_weather do |object|
    object.daily_weather.map do |day|
      {
        "date": Time.at(day[:dt]),
        "sunrise": Time.at(day[:sunrise]),
        "sunset": Time.at(day[:sunset]),
        "max_temp": day[:temp][:max],
        "min_temp": day[:temp][:min],
        "conditions": day[:weather][0][:description],
        "icon": day[:weather][0][:icon]
      }
    end
  end
  
end
