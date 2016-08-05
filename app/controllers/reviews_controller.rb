class ReviewsController < ApplicationController
  def new
    @movie = Movie.find_by(id: params[:movie_id])
    @review = Review.new
    if request.xhr?
      render :'reviews/_form', layout: false, locals: { review: @review }
    else
      render :new
    end
  end

  def create
    @review = Review.create(full_params)
    if @review.save
      render :'reviews/_show', layout: false, locals: { review: @review }
    else
      flash[:notice] = "Post successfully created"
      redirect_to category_movie_path
    end
  end

  private

  def full_params
    params.require(:review).permit(:title, :body, :movie_id, :stars, :reviewer_id)
  end

end
