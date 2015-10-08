Rails.application.routes.draw do
  
  devise_for :workers, controllers: {
    sessions: 'workers/sessions',
    passwords: 'workers/passwords',
    registrations: 'workers/registrations'
  }

  devise_for :students, controllers: {
    sessions: 'students/sessions',
    passwords: 'students/passwords',
    registrations: 'students/registrations'
  }

  root to: "top#index"
  get 'top' => "top#index"
  post 'top' => 'top#search'
  resources :introduction, only: :index
  resources :students, only: [:show, :edit, :update]
  resources :workers, only: [:show, :edit, :update]
  resources :message_rooms, only: [:index, :show]
  resources :messages, only:[:new, :create]

end
