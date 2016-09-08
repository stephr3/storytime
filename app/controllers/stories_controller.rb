class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
    random_number = 1 + rand(20)
    @image = Image.find_by(number: random_number)
  end
end
