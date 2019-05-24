class PagesController < ApplicationController
  
  def get
    page = Page.find_by!(id: params[:pageId], story_id: params[:storyId])
    entity = page.attributes
    entity[:children] = page.children
    render json: entity
  rescue ActiveRecord::RecordNotFound => e
      render status: 404, json: { errors: exception }
  end

  def save
    page = Page.new(name: params[:name], text: params[:text], story_id: params[:storyId], parent_id: params[:parentId])
    if page.save
      render status: 201, json: { id: page.id }
    else
      render status: 422, json: { errors: page.errors }
    end
  end

  def notfound
    render html: helpers.tag.strong("No route exists! Sorry!")
  end

end
