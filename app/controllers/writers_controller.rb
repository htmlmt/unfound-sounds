class WritersController < ApplicationController
  def new
    @writer = Writer.new
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def create
    @writer = Writer.new(params[:writer])
    
    format.html
      if @writer.save
        session[:writer_id] = @writer.id
        redirect_to :home
      else
        render "new"
      end
      redirect_to :root
    format.js
      if @writer.save
        session[:writer_id] = @writer.id
      else
        alert("Sorry, try again.")
      end
  end
end