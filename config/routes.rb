Rails.application.routes.draw do
  
	root 'pages#home'
	get  '/create',  to: 'alarms#new'
	post '/create', to:'alarms#create'
	resources :alarms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
