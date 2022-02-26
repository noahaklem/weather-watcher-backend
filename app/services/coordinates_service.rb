class CoordinatesService
  def self.get_coordinates(location)
    response = connection.get('geocoding/v1/address') do |f|
      f.params[:key] = ENV['COORD_API_KEY']
      f.params[:location] = location
    end
    json = JSON.parse(response.body, symbolize_names: true)
    byebug
  end

  def self.connection
    Faraday.new('http://www.mapquestapi.com/')
  end
end