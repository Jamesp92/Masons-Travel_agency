class ReviewsController < ApplicationController

  def show
    destination = Destination.find(params[:destination_id])
    @reviews = Review.find(params[:id])
    if @reviews.destination_id = destination.id
      json_response(@reviews)
    else
      # flash error or whatever
    end
  end

  def create
    user = Session.user
    @reviews = Review.create!(params[:destination_id], review_params, user_id: 1)
    # take rating from params and take rating from all destination-related reviews and calcauate an overal ratting. Then store this rating in the assocaited destination table.
    # params[:rating] SQL_here_to_get_rating
    # store said rating into params[destination_id]
    json_response(@reviews)
  end

  def update
    @reviews = Review.find(params[:id])
    @reviews.update(review_params)
  end

  def destroy
    @reviews = Review.find(params[:id])
    @reviews.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def review_params
    params.permit(:content_body, :rating)
  end

end
