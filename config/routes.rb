Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/help'
  get 'pages/credit'
  resources :cursos
  resources :materias
  resources :acudientes
  resources :alumnos
  resources :docentes
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
