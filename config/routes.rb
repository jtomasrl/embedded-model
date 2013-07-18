DeviseTest::Application.routes.draw do
  devise_for :admins
  devise_for :accounts

  resources :stores do
    resources :accounts
  end

  root "stores#index"
end
