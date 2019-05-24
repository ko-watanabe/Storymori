Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, default: { format: :json } do
    get '/stories', to: 'stories#get'
    post '/stories', to: 'stories#save'
    get '/stories/:story_id/pages/:page_id', to: 'pages#get'
    post '/stories/:story_id/pages/:parent_id:/next', to: 'pages#save'
  end
end
