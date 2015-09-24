class OffersController < ApplicationController
  before_action :set_offer, only: :show

  def index
    if params[:tag].present?
      @offers = Offer.tagged_with(params[:tag])
    else
      @offers = Offer.all
    end
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    respond_to do |format|
      if @offer.save
        format.html { redirect_to @offer, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:all_tags, :author, :title, :description)
  end
end
