class ReviewsController < ApplicationController
  def new
    @movie = Movie.find_by(id: params[:movie_id])
    @review = Review.new
    if request.xhr?
      render :'reviews/_form', layout: false, locals: { review: @review }
    else
      render :'New'
    end
  end

  def create
  end

end
