class CitiesController < ApplicationController
  def by_region
    @cities = City.where(region_id: params[:region_id])
    render json: @cities
  end
end