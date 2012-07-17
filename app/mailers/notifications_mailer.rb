class NotificationsMailer < ActionMailer::Base
  
  
  
  default :from =>"info@example.com"
  
 

  
  default :to => "lagilda84@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[INFO-LAGILDA] #{message.subject}")
  end


end

