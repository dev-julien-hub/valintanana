Rails.application.routes.draw do
  get "/projets/index"
  get "/projets/condition"
  resource :projets
  devise_for :users
	root to: "home#index"
  	resource :home

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
