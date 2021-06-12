class NotificationMailer < ApplicationMailer
   default from: ENV['YOUR_EMAIL_ADDRESS']

  def complete_mail(reservation)
    @reservation = reservation
    @url = "https://48f9c8cefb7d4d25a1cc378228653507.vfs.cloud9.us-east-2.amazonaws.com/"
    mail(subject: "[tennisReservation]コートの予約が完了しました。" ,to: @reservation.email)
  end
end
