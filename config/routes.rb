Rails.application.routes.draw do
  root to: 'users#new'
  resources :sessions, only: %i[new create destroy]
  resources :users, only: %i[new create show edit update]
  resources :favorites, only: %i[create destroy index]
  resources :pictures do
    collection do
      post :confirm
    end
  end
  mount LetterOpenerWeb::Engine, at: '/letter_opener'
end
