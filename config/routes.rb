Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'cocktails/index'
  # get 'cocktails/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    # member do
    #   get :ingredients do
    #     member do
    #       get :doses
    #     end
    #   end
    # end
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [ :destroy ]
end
