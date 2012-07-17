class ApplicationController < ActionController::Base
  before_filter :mailer_set_url_options

  
  layout "application"
  #layout :layout_by_resource


  #def layout_by_resource
   # if devise_controller?
    #  "application"
    #else 
    #  "application"
    #end
    #end

  def mailer_set_url_options
    ActionMailer::Base.default_url_options[:host] = request.host_with_port
  end




def render_forbidden
  respond_to do |format|
    format.html { redirect_to root_path, notice: 'Non sei autorizzato a modificare questo evento'}
    #...
  end
  true
end

end

