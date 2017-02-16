class SpaceTypesController < ApplicationController
  def index
    @space_types = SpaceType.all
  end

  def show
    @space_type = SpaceType.find_by(space_sort_eng: params[:space_sort_eng])
  end
end
