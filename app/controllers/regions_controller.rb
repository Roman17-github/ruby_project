class RegionsController < ApplicationController
  def by_country
    @regions = Region.where(country_id: params[:country_id])
    render json: @regions
  end
end