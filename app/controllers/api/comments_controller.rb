class Api::CommentsController < ApplicationController
  before_action :authenticate_api_user!

  def create
    if commentable_params[:product_id]
      @commentable = Product.find(params[:product_id])
    else
      @commentable = Retailer.find(params[:retailer_id])
    end

    @comment = @commentable.comments.create!(review_params.merge({user: current_api_user}))
    @commentable.update!(rating: @commentable.rating + review_params[:rating])
  end

  def commentable_params
    params.permit(:product_id, :retailer_id)
  end

  def review_params
    params.permit(:title, :comment, :rating)
  end
end
