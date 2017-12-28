Rails.application.routes.draw do
  devise_for :admins
  get 'admin/home'

  root to: 'kashkulistan#index'

  get 'admin' => 'admin#home'

  #API Routes, used for Axios requests from Vue app
  namespace :api, defaults: { format: :json } do
  	namespace :v1 do
    	resources :people, only: [ :index ]
    	resources :events, only: [ :index ]
    	resources :projects, only: [ :index ]
    end
  end

  #Rails app routes, used for CMS
  resources :projects

end  
