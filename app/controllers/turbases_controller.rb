class TurbasesController < ApplicationController

  def index
    @turbases = Turbasis.all
  end

  def filter_by_region
          region_id = params[:region_id]
            if region_id.to_i != 0
              @turbases = Turbasis.joins(city: { region: :country }).where(cities: { regions: { id: region_id } })
            else
              @turbases = Turbasis.all
            end

            data = @turbases.map do |turbasis|
              {
                name: turbasis.name,
                city: turbasis.city.name,
                region: turbasis.city.region.name,
                country: turbasis.city.region.country.name
              }
            end

            render json: data
  end

  def show
  end

  def new
    @turbasis = Turbasis.new
  end

  def create
    @turbasis = Turbasis.new(turbasis_params)
    if @turbasis.save
      redirect_to turbases_path, notice: "Turbasis created successfully"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @turbasis.update(turbasis_params)
      redirect_to turbases_path, notice: "Turbasis updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @turbasis.destroy
    redirect_to turbases_path, notice: "Turbasis deleted successfully"
  end

  private

  def set_turbasis
    @turbasis = Turbasis.find(params[:id])
  end

  def turbasis_params
    params.require(:turbasis).permit(:name, :city_id)
  end
end
