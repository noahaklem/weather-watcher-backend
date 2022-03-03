class Location 
  # belongs_to :user
  
  attr_reader :latitude, :longitude
  # take results from coordinates_service and initialize a location instance
  def initialize(data)
    @latitude = data[:lat]
    @longitude = data[:lng]
  end

  # take location instance and forward to the weather_api

end