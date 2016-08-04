class MoviesController < ApplicationController
  def index

    if params[:search]
      @movies = Movie.search(params[:search])
      if @movies.length > 0
        @movies
      else
        @errors = "No movies matched your search criteria"
      end
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
