class StoriesController < ApplicationController
  
  def get
    stories = Stories.all()
    render json: stories
  end

  def save
    story = Stories.create(title: params[:title], summary: params[:text].slice(0, 10))
    page = Pages.create(name: params[:title], text: params[:text], story_id: story.id)
    render json: { story_id: story.id, page_id: page.id }
  end

  def notfound
    render html: helpers.tag.strong("This route does not exists. Sorry!")
  end

end
