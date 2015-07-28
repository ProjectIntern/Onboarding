class BrandsController < ApplicationController

  def show
    @brand = Brand.find(params[:id])
  end

  def index
    @brands = Brand.all
  end

  def create
    @brand = Brand.new(brand_params)
  end

  private
  def brand_params
    params.require(:brand).permit(:name, :description, :picture, :video)
  end
end
