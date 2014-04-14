module PagesHelper
  def title
    if @title
      "#{@title} | Unfound Sounds" 
    else
      "Unfound Sounds"
    end
  end
  
  def format_date(time)
    time.strftime("%B %e, %Y")
  end
  
  def h(text)
    Rack::Utils.escape_html(text)
  end
end
