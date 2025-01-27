Rails.application.routes.draw do
  post '/api/ask', to: 'questions#ask'

  get '/questions/:id', to: 'main#index'

  get '/db', to: redirect('/admin/questions')

  root 'main#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
