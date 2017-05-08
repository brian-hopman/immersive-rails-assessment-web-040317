class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def new

  end

  def create
    @new = Appearance.new
  
    @new[:rating] = params[:rating]
    if request.post?
      @new.save
      redirect_to appearances_path
    end

  end
end
