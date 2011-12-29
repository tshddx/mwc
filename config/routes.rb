Mwc::Application.routes.draw do
  root :to => "home#index"
  devise_for :users

  resources :users, :only => :show
  resources :members
  resources :reservations
  resources :meeting_attendeds
  resources :meetings
  resources :calling_lists
end
