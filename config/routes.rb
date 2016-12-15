Rails.application.routes.draw do
  devise_for :users
  resources :students do
    get :subjects
    get :student
  end
  resources :teachers do
    get :subjects
    get :teacher
  end
  resources :payments do
    get :payment
  end
  scope :reports do
    get 'subjects', to: 'reports#subjects', as: 'report_subjects'
  end
  root to: 'visitors#index', as: 'root'
end
