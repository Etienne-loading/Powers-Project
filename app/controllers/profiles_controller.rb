class ProfilesController < ApplicationController
  before_action :find_profile, only: [:show, :edit, :update, :destroy]


  def show
  end

  private

  def find_profile
    @profile = current_user
  end

  def profile_params
    params.permit(:user).permit(:pseudo, :address, :first_name, :last_name, :power_id, :profile_photo)
  end
end
