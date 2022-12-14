Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :plans do
    resources :features
  end
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
