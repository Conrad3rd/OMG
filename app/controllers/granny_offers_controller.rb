class GrannyOffersController < ApplicationController

  before_action :set_offer, only: %i[show edit update destroy]
  def index
    # Preventing SQL Injection and Database error for
    # unknown characters
    # if params[:query].present?
    #   @query = params[:query]
    #   @granny_offers = GrannyOffer.where("location LIKE ?", "%#{params[:query]}%")
    # else
    @granny_offers = GrannyOffer.all
  end

  def show
    @booking = Booking.new
    # @granny_offer = GrannyOffer.find(params[:id])

    if @booking.save
      redirect_to user_path(@user), notice: "Booked!"
    else
      render :show, status: :unprocessable_entity
    end
  end

  def new
    @granny_offer = GrannyOffer.new

    if @grany_offer.save
      redirect_to profile_path(current_user), notice: "YOUR OFFER WAS CREATED!"
    else
      render :show, status: :unprocessable_entity
    end
  end

  def create
    @granny_offer = GrannyOffer.new(granny_offer_params)
    @granny_offer.user = current_user

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
    params.require(:granny_offer).permit(:hug_amount, :available, :details, :additional, :introduction, :first_name)
  end
end
