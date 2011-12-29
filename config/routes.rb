Mwc::Application.routes.draw do
  root :to => "home#index"
  devise_for :users

  resources :users, :only => :show
  get "reservations/toggle"
  get "meeting_attendeds/toggle"

  resources :members
  resources :meeting_attendeds
  resources :meetings
  resources :calling_lists
end
