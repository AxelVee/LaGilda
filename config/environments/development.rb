CastingUP::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

#require 'net/smtp'
#Net.instance_eval {remove_const :SMTPSession} if defined?(Net::SMTPSession)

#require 'net/pop'
#Net::POP.instance_eval {remove_const :Revision} if defined?(Net::POP::Revision)
#Net.instance_eval {remove_const :POP} if defined?(Net::POP)
#Net.instance_eval {remove_const :POPSession} if defined?(Net::POPSession)
#Net.instance_eval {remove_const :POP3Session} if defined?(Net::POP3Session)
#Net.instance_eval {remove_const :APOPSession} if defined?(Net::APOPSession)


#require 'tlsmail'  
  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
 
  # config.action_controller.default_url_options = {:host => "localhost:3000"} 
 
#Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)


ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
   #:enable_starttls_auto => true, 
   :address => "smtp.gmail.com",
   :port => 587,
   #:tls =>true,
   :domain =>"mail.google.com",
   :authentication => :plain,
   :user_name => "lagilda84@gmail.com ",
   :password => "otaku8184",
}
end 

