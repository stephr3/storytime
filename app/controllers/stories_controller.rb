class StoriesController < ApplicationController
  def index
    @stories = Story.all.order(created_at: :desc)
  end

  def show
    @story = Story.find(params[:id])
    component_image_numbers = []
    available_image_numbers = []
    @story.components.each do |component|
      component_image_numbers.push(component.image.number)
    end

    digits = 1..20
    digits.each do |digit|
      if component_image_numbers.exclude?(digit)
        available_image_numbers.push(digit)
      end
    end
    random_number = available_image_numbers.sample
    @image = Image.find_by(number: random_number)
  end

  def new
    @story = Story.new
  end
  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to :root
    else
      render :new
    end
  end

  private
  def story_params
    params.require(:story).permit(:creator, :title)
  end
end
