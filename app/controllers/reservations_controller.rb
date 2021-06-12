class ReservationsController < ApplicationController
  
  
  
  def new
    @reservation = Reservation.new
  end
  
  def create
    @reservation = Reservation.new(reservation_params)
    #フォームの値がparamsに格納
    #binding.pry
       if @reservation.save
         redirect_to root_path, success: "コートを予約しました。メールをご確認ください。"
         #結果のフィードバック
         #指定したPathに転送する
         NotificationMailer.complete_mail(@reservation).deliver_now
       else
          flash.now[:danger] = "失敗です。もう一度お願いします。"
          render :new
          #render　new viewが読み込まれる
       end
  end
  
  def show
    @reservation = Reservation.find_by(id: params[:id])
  end
  
  def index
    @reservations = Reservation.all
  end

 private
 def reservation_params
  params.require(:reservation).permit(:name, :email, :phone_number, :password, :password_confirmation, :court_name, :time, :number)
  #ストロングパラメータ
 end
end