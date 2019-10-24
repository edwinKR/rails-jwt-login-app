Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Add signup route
    # path url, and making connection to the users_controller and running the signup action method.
  post 'auth/signup', to: 'users#signup'
end
