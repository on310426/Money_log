class User::UsersController < ApplicationController
  def top
  end

  def show
  end

  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to users_mypage_path
    else
      render user_mypage_edit_path
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:last_name, :first_name, :account_name, :email)
  end
end