ReviewBrowser::Engine.routes.draw do
  extend ReviewBrowser::Concerns::Routing

  root :to => 'home#index'
end
