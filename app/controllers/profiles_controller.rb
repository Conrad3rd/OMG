class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end
end
