class ImagesController < ApplicationController

  def index
    @images = Image.all
  end
  
  def show
    @story = Story.find(params[:story_id])
    @image = Image.find(params[:id])
    @component = @image.components.new
  end
end
