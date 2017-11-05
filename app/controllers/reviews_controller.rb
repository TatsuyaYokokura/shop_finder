class ReviewsController < ApplicationController

  def create
    review = Review.create(create_params)
    redirect_to shop_path(review.shop_id)
  end

  private
  def create_params
    params.require(:review).permit(:review).merge(shop_id: params[:shop_id])
  end


end
