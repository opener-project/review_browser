Rails.application.routes.draw do
  mount ReviewBrowser::Engine => '/review_browser'
end
