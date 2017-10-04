Rails.application.routes.draw do
  resources :resultadoconsulta
  get 'consulta_cpf/index'

  get 'boletims/index'

  # get "boletims/index"
resources :boletims, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

