class WritersController < ApplicationController
  def new
    @writer = Writer.new
  end
  
  def create
    @writer = Writer.new(params[:writer])
    
    if @writer.save
      session[:writer_id] = @writer.id
      redirect_to :home
    else
      render "new"
    end
  end
end