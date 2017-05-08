class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    
  end

  def create
    @new = Guest.new
    @new[:name] = params[:name]
    @new[:occupation] = params[:occupation]

    if request.post?
      @new.save
      redirect_to guests_path
    end
  end
end
