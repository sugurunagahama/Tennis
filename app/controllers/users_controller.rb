class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
  @user = User.new(user_params)
  #binding.pry
   if @user.save
    redirect_to root_path, success: "ご登録ありがとうございます。"
   else
     flash.now[:danger] = "失敗です。もう一度お願いします。"
    render :new
   end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :phone_number, :password, :password_confirmation)
  end
end
