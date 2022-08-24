class UsersController < ApplicationController

  def update
    @user.update(user_params)
    if @user.save
      redirect_to granny_offer_path(@granny_offer), notice: "Offer was created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
  params.require(:user).permit(:first_name, :last_name, :address, :age)
  end
end
