Rails.application.routes.draw do
  resources :comentarios
  resources :murals
  resources :comentarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/murals/perfil/:perfil', to:'murals#findByPerfil'
  # get '/comentarios/like/:like', controller:'comentarios', action:'findByQuantLikes'
end
