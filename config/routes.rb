KhanTranslater::Application.routes.draw do
  resources :mappings

  post "translate" => "translactions#create"
  get "translate" => "home#index"

  root :to => 'home#index'
end
