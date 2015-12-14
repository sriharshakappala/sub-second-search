Rails.application.routes.draw do
  root 'search#index'
  get 'search' => 'search#index'
  post 'search_the_crap_out_of_redis' => 'search#search_the_crap_out_of_redis'
end
