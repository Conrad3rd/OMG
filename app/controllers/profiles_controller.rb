class ProfilesController < ApplicationController
  def show
    @user = current_user


  end

  def edit
    @user = current_user
  end

  # private

  # def user_params
  #   params.require(:user).permit(:granny)
  # end

end
