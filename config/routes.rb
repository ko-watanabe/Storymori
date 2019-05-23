Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'api/stories', to: 'stories#get'
  post 'api/stories', to: 'stories#save'
  get 'api/stories/:storyId/pages/:pageId', to: 'pages#get'
  post 'api/stories/:storyId/pages/:parentId:/next', to: 'pages#save'
  get '*path' => 'stories#notfound'
end
