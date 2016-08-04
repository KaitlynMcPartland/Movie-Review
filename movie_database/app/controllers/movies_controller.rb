class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    if params[:search]
      @movies = Movie.search(params[:search]).order("created_at DESC")
    else
      "found nothing"
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
