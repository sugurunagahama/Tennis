class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: session_params[:email])
    #メールアドレスを取得し一致するユーザーを検索
    
    if user && user.authenticate(session_params[:password])
      #該当のメールアドレスを持つUserが存在している。かつUserのパスワードが正しい。
      log_in user
      redirect_to root_path, success: 'ログイン成功!!'
    else
      flash.now[:danger] = 'ログイン失敗'
      render :new
    end
  end
  
   def destroy
    log_out
    redirect_to root_url, info: 'ログアウトしました'
   end

  private
  def log_in(user)
    session[:user_id] = user.id
    #session[user_id]じログイン情報を保存。
  end
  
  def log_out
    session.delete(:user_id)
    #セッションに保存されているuser_idを削除でログアウト
    @current_user = nil
  end

  private
  def session_params
    params.require(:session).permit(:email,:password,)
  end
 #ストロングパラメータ
end
