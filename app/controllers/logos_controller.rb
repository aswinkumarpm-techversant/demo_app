class LogosController < ApplicationController
  def index
    @logos = Logo.all
  end
  def new
    @logo = Logo.new
  end

  def create
    @logo = Logo.new(logo_params)
    if @logo.save
      redirect_to @logo
    else
      render 'new'
    end
  end

  private
  def logo_params
    params.require(:logo).permit(:image)
  end
end
