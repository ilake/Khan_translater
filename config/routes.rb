KhanTranslater::Application.routes.draw do
  resources :mappings

  post "translate" => "translactions#create"

  root :to => 'home#index'
end
