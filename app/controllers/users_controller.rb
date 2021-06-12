class UsersController < ApplicationController
  def new
    @user = User.new
  end
    #インスタンス変数に値を代入
    #@はControllerからViewに変数を渡す
  def create
    @user = User.new(user_params)
    #フォームの値がparamsに格納
    #binding.pry
     if @user.save
       redirect_to root_path, success: "ご登録ありがとうございます。"
       #結果のフィードバック
       #指定したPathに転送する
     else
        flash.now[:danger] = "失敗です。もう一度お願いします。"
        render :new
        #render　new viewが読み込まれる
     end
  end
  
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :phone_number, :password, :password_confirmation)
    #ストロングパラメータ
  end
end
