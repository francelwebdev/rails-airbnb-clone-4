class ReviewsController < ApplicationController

  before_action :authenticate_user!

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @equipment = Equipment.find(params[:equipment_id])
    if @review.save
      flash[:notice] = "Thanks for your review!"
    else
      flash[:alert] = "Sorry, we could not save your review. #{@review.errors.full_messages.join(", ")}"
    end
    redirect_to equipment_path(@equipment)
  end

  def index
    @equipment = Equipment.find(params[:equipment_id])
    redirect_to equipment_path(@equipment) # don't tell Seb
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
