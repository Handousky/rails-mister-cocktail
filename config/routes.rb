Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:new, :create]
  end
  delete 'doses/:id', to: 'doses#destroy'
end
