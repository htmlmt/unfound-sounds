class WritersController < ApplicationController
  def index
  end
  
  def new
    @writer = Writer.new
    
    respond_to do |format|
      format.html
      format.js
    end
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
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
end