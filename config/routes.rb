Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, default: { format: :json } do
    get '/stories', to: 'stories#get'
    post '/stories', to: 'stories#save'
    get '/stories/:storyId/pages/:pageId', to: 'pages#get'
    post '/stories/:storyId/pages/:parentId:/next', to: 'pages#save'
    get '*path' => 'stories#notfound'
  end
end
