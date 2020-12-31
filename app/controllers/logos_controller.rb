class LogosController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:index, :upload_image]

  def index
    @logos = Logo.all
  end

  def new
    @logo = Logo.new
  end

  def edit
    @logo = Logo.find(params[:id])
  end

  def update
    @logo = Logo.find(params[:id])
    if @logo.update(logo_params)
      redirect_to homes_index_path
    else
      render 'edit'
    end
  end

  def upload_image
    @logo = Logo.first
    if @logo.update(image: params[:image])
      redirect_to homes_main_page_path
    else
      render 'edit'
    end
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
