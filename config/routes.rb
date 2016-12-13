Rails.application.routes.draw do
  devise_for :users
  resources :students do
    get :subjects
  end
  scope :reports do
    get 'subjects', to: 'reports#subjects', as: 'report_subjects'
end
  get '/students', to: 'students#index'
  get '/teachers', to: 'teachers#index'
  get '/taechers/new', to: 'teachers#new', as: 'new_teacher'
  root to: 'visitors#index', as: 'root'
end
