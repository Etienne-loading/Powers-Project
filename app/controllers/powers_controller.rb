class PowersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_power, only: [:show]

  def index
    @powers = Power.all
  end

  def show
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

  def power_params
    params.require(:power).permit(:name, :price, :description, :rarity, :category, :universe, :photo)
  end
end
