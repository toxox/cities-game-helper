class CitiesController < ApplicationController
  rescue_from Exception, with: :render_index

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

  private

  def render_index
    flash.now[:warning] = "asdasd"
    render action: :index
  end
end
