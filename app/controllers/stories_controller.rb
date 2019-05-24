class StoriesController < ApplicationController
  
  def get
    stories = Story.joins(:pages).select("stories.id, stories.title, pages.id, As parantId").where("pages.parent_id IS NULL")
    render json: stories
  end

  def save
    story = Story.create(title: params[:title], summary: params[:text].slice(0, 10))
    page = Pages.create(name: params[:title], text: params[:text], story_id: story.id)
    render json: { story_id: story.id, page_id: page.id }
  end

  def notfound
    render html: helpers.tag.strong("This route does not exists. Sorry!")
  end

end
