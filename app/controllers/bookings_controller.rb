class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
