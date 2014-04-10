class HintsController < ApplicationController
  def index
    @hints = Hint.all
  end

  def new
    @hint = Hint.new
  end

  def edit
    @hint = Hint.new
  end

  def show
    @hint = Hint.find(params[:id])
  end

  def create
    @hint = Hint.new(params[:hint])
    
    if @hint.save
      redirect_to(:root)
    end
  end

  def update
    @hint = Hint.find(params[:id])
    @hint.update_attributes(params[:hint])
    redirect_to(:root)
  end

  def delete
    @hint = Hint.find(params[:id])
    @hint.delete
    redirect_to(:root)
  end
end
