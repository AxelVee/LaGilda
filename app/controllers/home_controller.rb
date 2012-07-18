class HomeController < ApplicationController


  def termsofuse
    @title = "Termini di servizio"  
  end
  
  def home
    
  end
  
  def contact
    @title = "Contact us"
  end
  
  def about
    @title = "About"
  end

  def shower
    @teacher = Teacher.find(params[:id])

   
    end
    
  


 
end
