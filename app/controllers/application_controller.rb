class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
  #Bootstramに対応したフラッシュメッセージを許可かする記述
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  #現在ログインしているUserを返すメソッド
  end

  def logged_in?
    !current_user.nil?
  end
  #ログインしているかどうか
  
  helper_method :current_user,:logged_in?
  #Dry(Don`t repeat yourself)に則った。application_helper.rbを削除。
  
end