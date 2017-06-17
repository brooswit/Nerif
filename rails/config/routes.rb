Rails.application.routes.draw do
  resources :team_players
  resources :teams
  resources :players
  resources :match_detail_players
  resources :match_details
  resources :match_players
  resources :matches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
