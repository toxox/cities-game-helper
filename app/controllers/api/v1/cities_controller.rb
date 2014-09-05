class Api::V1::CitiesController < ApplicationController
  respond_to :json

  def index
    respond_with City.all
  end

  def show
    respond_with City.find(params[:id])
  end
end