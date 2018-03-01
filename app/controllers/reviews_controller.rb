class ReviewsController < ApplicationController
  before_action :load_movie

  def create
    @review = Review.new(review_params)
    respond_to do |format|
      if @review.save
        format.html { redirect_to @movie, notice: 'Review was successfully created.' }
      else
        format.html { redirect_to @movie, notice: 'Review was not created.' }
      end
    end
  end

  def replies
    @parent_review = Review.find(params[:id])
    @review = Review.new(review_params.merge({ parent_id: @parent_review.id }))
    respond_to do |format|
      if @review.save
        format.html { redirect_to @movie, notice: 'Replied.' }
      else
        format.html { redirect_to @movie, notice: 'Not created.' }
      end
    end
  end

  private

    def load_movie
      @movie = Movie.find(params[:review][:movie_id])
    end

    def review_params
      params.require(:review).permit(:comment, :rating, :movie_id).merge({ user_id: current_user.id })
    end
end
