class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:welcome, :github, :sign_up]
  #if delete line 3 omniworks, but login page fails ... if leave it on omni does not work and login page works... WTF?


  def welcome
    if user_logged_in?
    redirect_to root_path
  else
    redirect_to new_user_registration_path
    end
  end

  def dashboard
    @user = current_user
  end
end
