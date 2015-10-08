Rails.application.routes.draw do
  
  devise_for :workers, controllers: {
    sessions: 'workers/sessions',
    passwords: 'workers/passwords',
    registrations: 'workers/registrations',
    # omniauth_callbacks: 'workers/omniauth_callbacks'
  }

  devise_for :students, controllers: {
    sessions: 'students/sessions',
    passwords: 'students/passwords',
    registrations: 'students/registrations',
    # omniauth_callbacks: 'students/omniauth_callbacks'
  }

  get "/workers/auth/:action/callback", :to => "workers/omniauth_callbacks", :constraints => { :action => /facebook/ }
  get "/students/auth/:action/callback", :to => "students/omniauth_callbacks", :constraints => { :action => /facebook/ }

  root to: "top#index"
  get 'top' => "top#index"
  post 'top' => 'top#search'
  resources :introduction, only: :index
  resources :students, only: [:show, :edit, :update]
  resources :workers, only: [:show, :edit, :update]
  resources :message_rooms, only: [:index, :show]
  resources :messages, only:[:new, :create]

end
