class UserController < ApplicationController
  before_action :find_user

  def edit
    authorize @user
    @user = current_user
  end

  def update
    authorize @user
    if @user.update
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :bio, :email, :avatar)
  end
end
