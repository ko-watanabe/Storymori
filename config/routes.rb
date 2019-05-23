Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/stories', to: 'stories#stories'
  post '/stories', to: 'stories#stories'
  get '/stories/:storyId/pages/:pageId', to: 'pages#page'
  post '/stories/:storyId/pages/:parentId:/next', to: 'pages#page'
  get '*path' => 'stories#notfound'
end
