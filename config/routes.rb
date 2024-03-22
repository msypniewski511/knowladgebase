Rails.application.routes.draw do
  root 'home#index'
  get "/about", to: "home#about"
  get "/work", to: "home#work"
  get "/contact", to: "home#contact"
  get "/soon", to: "home#soon"
  resources :channels
  resources :discussions do
    resources :replies
  end
  devise_for :users, controllers: { registrations: 'registrations' }
end