class UsersController < ApplicationController

  def edit
    authorize current_user
  end

  def update
    authorize current_user
    if current_user.update
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :bio, :email, :avatar)
  end
end
