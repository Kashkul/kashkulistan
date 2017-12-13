Rails.application.routes.draw do
  root to: 'kashkulistan#index'

  namespace :api, defaults: { format: :json } do
  	namespace :v1 do
    	resources :people, only: [ :index ]
    	resources :events, only: [ :index ]
    	resources :projects, only: [ :index ]
    end
  end
end  
