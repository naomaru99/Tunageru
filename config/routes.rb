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

end
