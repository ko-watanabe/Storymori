class StoriesController < ApplicationController
  
  def get
    stories = Stories.all()
    render json: stories
  end

  def save
    
  end

  def notfound
    render html: helpers.tag.strong("This route does not exists. Sorry!")
  end

end
