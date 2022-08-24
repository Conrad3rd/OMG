class UsersController < ApplicationController

  def update
    @user = current_user
    @user.update(user_params)
    if @user.save
      redirect_to profile_path(@user), notice: "Profile successfully updated!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :age)
  end
end
