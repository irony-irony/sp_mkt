class SpacesController < ApplicationController
  def index
  end
  def show
    @space = Space.find(params[:space_id])
  end
end
