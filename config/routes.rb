ReviewBrowser::Engine.routes.draw do
  extend ReviewBrowser::Concerns::Routing

  root :to => 'home#index'

  resources :reviews do
    resources :notes
    resources :tasks
  end
end
