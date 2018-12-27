Rails.application.routes.draw do
  require 'sidekiq/web'
  require 'sidekiq_unique_jobs/web'
  
  mount Sidekiq::Web, at: '/sidekiq'

  get 'posts/background', to:  'posts#background'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
