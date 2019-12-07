Rails.application.routes.draw do
  mount_devise_token_auth_for 'Voluntario', at: 'auth', controllers: {
    registrations:  'voluntarios/registrations'
  }
  mount_devise_token_auth_for "Admin", at: 'admin/auth'
  resources :calendarios
  resources :busco_mi_duenios
  resources :historial_adoptados
  resources :adoptados
  resources :voluntarios, only: [:update, :show]
  resources :buscados
  resources :extraviados
  get '/adoptados/:id/download', to: 'adoptados#download', as: :download
  devise_scope :admin do
    delete '/auth', to: 'devise_token_auth/registrations#destroy'
    post '/auth', to: 'devise_token_auth/registrations#create'
    get '/voluntarios', to: 'voluntarios/registrations#index'
    delete '/voluntarios/:id', to: 'voluntarios/registrations#elim'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
