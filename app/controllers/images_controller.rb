class ImagesController < ApplicationController

  def show
    @story = Story.find(params[:story_id])
    @image = Image.find(params[:id])
    @component = @image.components.new

  end
end
