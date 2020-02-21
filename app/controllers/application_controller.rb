class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: :welcome


  def welcome
    redirect_to root_path if user_signed_in?
  end

  def dashboard
    @user = current_user
  end
end
