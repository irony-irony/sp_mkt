class AmenitiesController < ApplicationController
  def index
    @amenities = Amenity.all
  end
  def show
    @amenity = Amenity.find_by(facility_eng: params[:facility_eng])
  end
end
