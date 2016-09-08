class ComponentsController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    @image = Image.find(component_params[:image_id])
    @component = @story.components.new(component_params)

    if @component.save
      redirect_to story_path(@component.story)
    else
      redirect_to story_image_path(@story, @image)
    end
  end

private
  def component_params
    params.require(:component).permit(:user, :text, :image_id)
  end
end
