class Api::V1::CitiesController < ApplicationController
  respond_to :json

  def index
    if params[:search]
      @city = City.search(params[:search])
      respond_with @city
    else
      respond_with City.all
    end
  end

  def show
    @city = City.search(params[:search])
    respond_with City.find(params[:id])
  end

  def new
    @name = params[:name]
    @country = params[:country]
    @first_letter = @name[0].downcase

    City.create(name: @name, country: @country, first_letter: @first_letter)
    redirect_to root_path
  end
end