Rails.application.routes.draw do
  mount_devise_token_auth_for 'Voluntario', at: 'auth', controllers: {
    registrations:  'voluntarios/registrations'
  }
  mount_devise_token_auth_for "Admin", at: 'admin/auth'
  resources :calendarios
  resources :busco_mi_duenios
  resources :historial_adoptados
  resources :adoptados
  resources :buscados
  resources :apadrinados
  resources :agradecimientos
  resources :extraviados
  get '/calendarios/:id/download', to: 'calendarios#download'
  get '/adoptados/:id/download', to: 'adoptados#download', as: :download
  get '/apadrinados/:id/download', to: 'apadrinados#download'
  get '/agradecimientos/:id/download', to: 'agradecimientos#download'
  devise_scope :admin do
    delete '/auth', to: 'devise_token_auth/registrations#destroy'
    post '/auth', to: 'devise_token_auth/registrations#create'
    get '/voluntarios', to: 'voluntarios/registrations#index'
    delete '/voluntarios/:id', to: 'voluntarios/registrations#elim'
    get '/voluntarios/:id', to: 'voluntarios/registrations#mostrar'
    put '/voluntarios/:id', to: 'voluntarios/registrations#modificar'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
