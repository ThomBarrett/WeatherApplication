Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :temperature_setting, except: [:destroy]

  root "weatherapp#home"
  get "/home", to: "weatherapp#home"
  get "/search", to: "weatherapp#search"
end
