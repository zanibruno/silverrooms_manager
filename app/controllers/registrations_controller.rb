class RegistrationsController < ApplicationController

  def new
  end 

  private

  def signup_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
