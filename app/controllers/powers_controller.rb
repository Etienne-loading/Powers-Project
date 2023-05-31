class PowersController < ApplicationController
  before_action :set_power, only: [:show]
  before_action :set_profile, only: [:show, :index, :new]

  def index
    @powers = Power.all
    @powers = Power.where.not(user_id: current_user.id)
  end

  def show
    @booking = Booking.new
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
    @power.user = current_user
    if @power.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_power
    @power = Power.find(params[:id])
  end

  def set_profile
    @profile = current_user
  end

  def power_params
    params.require(:power).permit(:name, :price, :description, :rarity, :category, :universe, :photo)
  end
end
