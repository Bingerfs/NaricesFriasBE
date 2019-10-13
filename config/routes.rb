Rails.application.routes.draw do
  mount_devise_token_auth_for 'Voluntario', at: 'auth'
  mount_devise_token_auth_for "Admin", at: 'admin/auth'
  resources :calendarios
  resources :busco_mi_duenios
  resources :historial_adoptados
  resources :adoptados
  resources :buscados
  resources :extraviados
  devise_scope :admin do
    delete '/auth', to: 'devise_token_auth/registrations#destroy'
    post '/auth', to: 'devise_token_auth/registrations#create'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
