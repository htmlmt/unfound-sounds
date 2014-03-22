class LoginsController < ApplicationController 
  def new
  end
  
  def create
    writer = Writer.find_by_email(params[:email])
    
    if writer && writer.authenticate(params[:password])
      session[:writer_id] = writer.id
      redirect_to :home
    else
      raise "Login failed. Try again."
    end
  end
  
  def destroy
    session[:writer_id] = nil
    redirect_to :home
  end
end