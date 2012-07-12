class ApplicationController < ActionController::Base
  before_filter :mailer_set_url_options
  
  
  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      "application"
    else
      "application"
    end
  end

  def mailer_set_url_options
    ActionMailer::Base.default_url_options[:host] = request.host_with_port
  end

end
