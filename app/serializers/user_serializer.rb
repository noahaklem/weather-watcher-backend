class UserSerializer < ActiveModel::Serializer
  attributes :username, :locations

  def locations
    object.locations.map do |location|
      {
        latitude: location.latitude,
        longitude: location.longitude
      }
    end
  end
end
