class GrannyOffersController < ApplicationController
  before_action :set_granny_offer, only: [:show, :edit, :update, :destroy]
  def index
    @granny_offers = GrannyOffer.all
  end

  def show
    @granny_offer = GrannyOffer.new
  end

  def new
    @granny_offer = GrannyOffer.new
  end

  def create
    @granny_offer = GrannyOffer.new(granny_offer_params)

    if @granny_offer.save
      redirect_to granny_offer_path(@granny_offer), notice: "Offer was created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @granny_offer.update(granny_offer_params)
    redirect_to granny_offers_path
  end

  def destroy
    @granny_offer.destroy
    redirect_to granny_offers_path status: :see_other
  end

  private

  def set_offer
    @granny_offer = GrannyOffer.find(params[:id])
  end

  def granny_offer_params
    params.require(:granny_offer).permit(:hug_amount, :available)
  end
end
