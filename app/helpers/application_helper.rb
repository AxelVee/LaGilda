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
end
