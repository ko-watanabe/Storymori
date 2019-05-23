class StoriesController < ApplicationController
  
  def stories()

  end

  def notfound()
    render html: helpers.tag.strong("I don't know that route, sorry!")
  end

end
