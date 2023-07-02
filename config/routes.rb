Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  get '/movies/:id/summary', to: 'movies#summary'
  get '/movie_summaries', to: 'movies#summaries'
  get '/movies/:id/reviews', to: 'movies#reviews' 
  get '/movies/:id/reviews/:id', to: 'movies#reviews' do
    resources :reviews, only: [:index, :show]
  end
  resources :directors, only: [:index, :show]
  resources :reviews, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
