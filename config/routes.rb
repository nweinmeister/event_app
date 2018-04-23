Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'application#welcome'

  get '/events' => 'events#index', as: 'events'
  get '/events/new' => 'events#new', as: 'new_event'
  post '/events' => 'events#create', as: 'create_event'
  get '/events/:id/edit' => 'events#edit', as: 'edit_event'
  patch '/events/:id' => 'events#update', as: 'event'

  get '/events/:id/rsvps' => 'rsvps#index', as: 'rsvps'
  get '/events/:id/rsvps/new' => 'rsvps#new', as: 'new_rsvp'
  post '/events/:id/rsvps' => 'rsvps#create', as: 'create_rsvp'
end
