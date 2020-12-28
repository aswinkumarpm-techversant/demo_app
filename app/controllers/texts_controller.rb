class TextsController < ApplicationController
  def index
    @text = Text.first
    puts @text
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @text = Text.new
  end

  def edit
    @text = Text.find(params[:id])
  end

  def update
    @text = Text.find(params[:id])
    if @text.update(text_params)
      redirect_to homes_index_path
    else
      render 'edit'
    end
  end

  def create
    @text = Text.new(text_params)
    if @text.save
      redirect_to @text
    else
      render 'new'
    end
  end

  private
  def text_params
    params.require(:text).permit(:content)
  end
end
