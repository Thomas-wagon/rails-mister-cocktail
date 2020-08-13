Rails.application.routes.draw do
  get 'cocktails/index'
  get 'cocktails/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :show] do
    member do
      get :ingredients do
        member do
          get :doses
        end
      end
    end
  end
end
