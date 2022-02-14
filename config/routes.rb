Rails.application.routes.draw do
<<<<<<< HEAD
=======
  resources :user_books
  resources :users

  root 'user_books#index'

>>>>>>> run_test
  resources :books do
    member do
      get :delete
    end
  end
<<<<<<< HEAD
  root 'books#index'
=======
>>>>>>> run_test
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
