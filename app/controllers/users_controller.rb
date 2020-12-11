class UsersController < ApplicationController

  def new 
    @user = User.new
  end

  def create 
    @user = User.create(user_params)
    raise
    if @user.save   
      redirect_to businesses_path
    else  
      render :edit 
    end
  end

  def edit
    authorize current_user
  end

  def update
    authorize current_user
    if current_user.update(user_params)
      redirect_to edit_user_path(current_user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :bio, :email, :avatar, :email, :password)
  end
end
