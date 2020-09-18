Rails.application.routes.draw do
  get 'student' => 'students#index'
  post 'student' => 'students#create'
  get 'student/:id' => 'students#show'
  put 'student/:id' => 'students#update'
  delete 'student/:id' => 'students#destroy'
  # resources :students
end
