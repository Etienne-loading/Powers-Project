class PowersController < ApplicationController
  before_action :set_power, only: [:show, :destroy, :edit, :update]
  before_action :set_profile, only: [:show, :index, :new, :edit, :update]

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
      redirect_to profile_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @power.destroy
    redirect_to profile_path(current_user), status: :see_other
  end

  def edit
  end

  def update
    @power.update(power_params)
    redirect_to profile_path(current_user)
  end


  private

  def set_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :price, :description, :rarity, :category, :universe, :photo)
  end
end
