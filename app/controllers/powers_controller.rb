class PowersController < ApplicationController
  before_action :set_power, only: [:show, :destroy, :edit, :update]
  before_action :set_profile, only: [:show, :index, :new, :edit, :update]

  def index
    if params[:query].present?
      sql_query = <<~SQL
        powers.name ILIKE :query
        OR powers.description ILIKE :query
        OR powers.universe ILIKE :query
        OR users.pseudo ILIKE :query
        OR users.last_name ILIKE :query
        OR users.first_name ILIKE :query
      SQL
      @powers = Power.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @powers = Power.all
      @powers = Power.where.not(user_id: current_user.id)
    end
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
    params.require(:power).permit(:name, :price, :description, :rarity, :universe, :photo)
  end
end
