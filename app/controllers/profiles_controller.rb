class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[edit update destroy]

  def show
    # @profile = Profile.find(params[:id])
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:email, :first_name, :last_name, :address, :age, :granny)
  end
end
