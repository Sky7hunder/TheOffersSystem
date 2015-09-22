class CommentsController < ApplicationController
  before_action :set_offer, only: [:new, :create]

  def new
    @comment = Comment.new(offer_id: params[:offer_id])
  end

  def create
    @comment = @offer.comments.create!(comment_params)
    @comment.save
    respond_to do |format|
      format.html {redirect_to :back}
      format.js
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def comment_params
    params.require(:comment).permit(:author, :text)
  end
end
