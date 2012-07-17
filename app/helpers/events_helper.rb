module EventsHelper

 
  def eventitle
    base_title = "Spettacolo"
    if @event.nil?
      base_title
    else
      "#{base_title} | #{@event.id}"
    end
  end


 def gravatar_for( event, options = {:size => 50})
      gravatar_image_tag(event.city.downcase, :alt => event.name,
                                              :class => 'gravatar',
                                              :gravatar => options  )
      
    end


end
