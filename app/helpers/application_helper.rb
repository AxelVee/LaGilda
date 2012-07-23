module ApplicationHelper
  
  #return un nome diverso per ogni pagina
  
  def title
    base_title = "La Gilda"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  
  
    def eventitle
    base_title = "Spettacolo"
    if @event.nil?
      base_title
    else
      "#{base_title} | #{@event.id}"
    end
  end
  
  
  

end
