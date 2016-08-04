class MoviesController < ApplicationController
  def index

    if params[:search]
      p "in params"
      @movies = Movie.search(params[:search])
    else
      "found nothing"
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
