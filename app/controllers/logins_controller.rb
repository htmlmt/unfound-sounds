class LoginsController < ApplicationController 
  def new
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def create
    writer = Writer.find_by_email(params[:email])
    
    respond_to do |format|
      format.html { redirect_to :root }
      format.js
      if writer && writer.authenticate(params[:password])
        session[:writer_id] = writer.id
      else
        raise "Login failed. Try again."
      end
    end
  
  end
  
  def destroy
    session[:writer_id] = nil
    redirect_to :home
  end
end
