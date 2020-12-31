class HomesController < ApplicationController

  def index
    @logo = Logo.first
    @text = Text.first

  end

  def edit
    @logo = Logo.find(params[:id])
  end

  def main_page
    @logo = Logo.first
    @text = Text.first
    if @logo.image.attached?
      @path = rails_blob_path(@logo.image)
    else
      @path = nil
    end
  end

  def update
    @logo = Logo.find(params[:id])
    if @logo.update(logo_params)
      redirect_to @logo
    else
      render 'edit'
    end
  end

  def show
  end

  private

  def logo_params
    params.require(:logo).permit(:image)
  end
end
