Rails.application.routes.draw do
  get 'ask_my_book', to: 'ask_my_book#index'

  get '/', to: redirect('/ask_my_book')

  resources :questions, only: [:create, :show, :index]

  post '/api/ask', to: 'questions#ask'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
