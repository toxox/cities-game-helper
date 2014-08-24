class CitiesController < ApplicationController
  def index
    @cities = City.all
    if params[:search]
      @city = City.search(params[:search])
      redirect_to @city
    end
  end

  def show
    @city = City.find(params[:id])
  end
end
