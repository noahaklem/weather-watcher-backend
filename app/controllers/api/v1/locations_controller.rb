class Api::V1::LocationsController < ApplicationController
  def index
    locations = Locations.all
    render json: LocationSerializer.new(locations)
  end
end
