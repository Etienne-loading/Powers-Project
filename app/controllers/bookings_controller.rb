class BookingsController < ApplicationController
  before_action :set_power, only: %i[new]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @power = Power.find(params[:power_id])
    @booking.power = @power
    @booking.user = current_user
    if @booking.save
      redirect_to power_path(@power)
    else
      render "powers/show", status: :unprocessable_entity
    end
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.update(status: "confirmed")
    redirect_to profile_path(@profile)
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.update(status: "canceled")
    redirect_to profile_path(@profile)
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to profile_path(@profile)
    else
      render "profiles/show", status: :unprocessable_entity
    end
  end


  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_power
    @power = Power.find(params[:power_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :power_id, :status, :total_price)
  end
end
