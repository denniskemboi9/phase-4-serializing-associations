class ReviewsController < ApplicationController
  def index
    reviews = Review.all
    render json: reviews
  end

  def show
    if params[:movie_id] #If there is a movie id in the review route
      movie_by_id = Movie.find(params[movie_id]) #Get that specific movie
      reviews = movie_by_id.reviews      #And then on the movie, find its reviews
    else #If there is no movie id in the route
      reviews = Review.find_by(id: params[:id])#Find movies in the normal way
    end

    render json: reviews
  end
end
