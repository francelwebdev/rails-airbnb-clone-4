class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    # @equipment = Equipment.find(params[:id])
  end

  def index
    @reviews = Review.all
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
