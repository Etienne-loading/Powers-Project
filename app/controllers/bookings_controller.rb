class BookingsController < ApplicationController
  before_action :set_power, only: %i[new create]
  before_action :set_user, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.powers = @power
    if @booking.save
      redirect_to list_path(@power)
    else
      render "/powers/show", status: :unprocessable_entity
    end
  end

  private

  def set_user
    @power = Power.find(params[:user_id])
  end

  def set_power
    @power = Power.find(params[:power_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :power_id, :status, :total_price)
  end

end
