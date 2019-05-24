module Api
    class StoriesController < ApplicationController

      def get
        stories = Story.joins(:pages).select("stories.id, stories.title, pages.id AS parentId").where("pages.parent_id IS NULL")
        render json: stories
      end
  
      def save
        story = Story.new(title: params[:title], summary: params[:text].slice(0, 10))
        if story.save
          page = Page.create(name: params[:title], text: params[:text], story_id: story.id)
          render json: { story_id: story.id, page_id: page.id }
        else
          render status: 400, json: { errors: story.errors }
        end
      end

    end
end