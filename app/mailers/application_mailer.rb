class ApplicationMailer < ActionMailer::Base
  default from:     "TennisReseration",
          reply_to: ENV['YOUR_EMAIL_ADDRESS']
  layout 'mailer'
end
