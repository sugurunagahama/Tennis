class NotificationMailer < ApplicationMailer
   default from: ENV['YOUR_EMAIL_ADDRESS']

  def complete_mail(reservation)
    @reservation = reservation
    @url = "https://agile-garden-00137.herokuapp.com/"
    mail(subject: "[tennisReservation]コートの予約が完了しました。" ,to: @reservation.email)
  end
end
