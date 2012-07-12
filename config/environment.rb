# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
CastingUP::Application.initialize!



ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
 
   :address => "smtp.gmail.com",
   :port => 587,

   :domain =>"mail.google.com",
   :authentication => :plain,
   :user_name => "lagilda84@gmail.com ",
   :password => "otaku8184",
}