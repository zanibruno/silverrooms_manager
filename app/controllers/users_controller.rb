class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create 
    @user = user.new(paras.require(:user).permit(:email, :encrypted_password))
    @user.save 
    
  end 

end
