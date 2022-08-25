class BookingsController < ApplicationController
  before_action :set_granny_offer, only: %i[show edit update destroy]

  def index
    @bookings = Booking.all
  end

  def show
    # @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    redirect_to profile_path(current_user)
  end

  def edit
    # @booking = Booking.find(params[:id])
  end

  def update
    # @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path
  end

  def destroy
    # @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
