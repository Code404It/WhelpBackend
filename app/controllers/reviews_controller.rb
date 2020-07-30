class ReviewsController < ApplicationController
    before_action :set_kid

  def index
    @reviews = Review.all
    render json: @reviews
  end

  def show
    @review = Review.find-by(params[:id])
    render json: @review 
  end

  def create
      @review = @kid.reviews.new(review_params)
    if @kid.update_discipline_level(@review) != 'Whelp!'
      @review.save
      render json: @kid
    else
      render json: {error: 'Whelp!'}
    end
  end

  def destroy
    @review = Review.find_by(params["id"])
    @kid = Kid.find_by(@review.kid_id)
    if @kid.update_discipline_level_on_delete(@review)
      @review.destroy
      render json: @kid
    else
      render json: {error: 'Whelp!'}
    end

  end

  private

  def set_kid
    @kid = Kid.find_by(params[:kid_id])
  end


  def review_params
    params.require(:review).permit(:kid_id,:date, :points, :score, :title, :description, :agreeable)
  end


end

