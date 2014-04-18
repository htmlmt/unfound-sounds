class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def authorize
    if current_user.nil?
      redirect_to :new_login
    end
  end
  
  def check_admin
    if current_user
      @admins = ['mikejtodd@gmail.com']
      @admins.include?(current_user.email)
    end
  end
  
  def markdown(text)
    options = {
      filter_html:    true,
      link_attributes: { rel: 'nofollow' },
      space_after_headers: true, 
      fenced_code_blocks: true,
      disable_indented_code_blocks: true,
      no_styles: true
    }

    extensions = {
      autolink:          true,
      superscript:        true,
      disable_indented_code_blocks: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end
    
  helper_method :markdown
  
  private
  
  def current_user
    if session[:writer_id]
      @current_user ||= Writer.find(session[:writer_id])
    end
  end
  helper_method :current_user
  
end
