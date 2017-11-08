Rails.application.routes.draw do
  root to: 'kashkulistan#index'

  namespace :api, defaults: { format: :json } do
    resources :people, only: [ :index ]
  end
end  
end
