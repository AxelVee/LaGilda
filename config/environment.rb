# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
CastingUP::Application.initialize!



require 'tlsmail'    


require 'net/smtp'
Net.instance_eval {remove_const :SMTPSession} if defined?(Net::SMTPSession)

require 'net/pop'
Net::POP.instance_eval {remove_const :Revision} if defined?(Net::POP::Revision)
Net.instance_eval {remove_const :POP} if defined?(Net::POP)
Net.instance_eval {remove_const :POPSession} if defined?(Net::POPSession)
Net.instance_eval {remove_const :POP3Session} if defined?(Net::POP3Session)
Net.instance_eval {remove_const :APOPSession} if defined?(Net::APOPSession)

Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
   :enable_starttls_auto => true, 
   :address => "smtp.gmail.com",
   :port => 587,
   :tls =>true,
   :domain =>"gmail.com",
   :authentication => :plain,
   :user_name => "lagilda84@gmail.com ",
   :password => "otaku8184",
}