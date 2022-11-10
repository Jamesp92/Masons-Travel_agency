class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
    json_response(@destinations)
  end

  def show
    @destinations = Destination.find(params[:id])
    json_response(@destinations)
  end

  def create
    @destinations = Destination.create(destination_params)
    json_response(@destinations)
  end

  def update
    @destinations = Destination.find(params[:id])
    @destinations.update(destination_params)
  end

  def destroy
    @destinations = Destination.find(params[:id])
    @destinations.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def destination_params
    params.permit(:city, :country)
  end
end
