class MoviesController < ApplicationController
  # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def show
    movie = Movie.find(params[:id])
    render json: movie
  end

  def summary
    movie = Movie.find(params[:id])
    render json: movie, serializer: MovieSummarySerializer
  end

  def summaries
    movies = Movie.all
    render json: movies, each_serializer: MovieSummarySerializer
  end

end
