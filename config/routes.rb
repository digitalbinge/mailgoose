Rails.application.routes.draw do
	get '/support', to: 'support#new'
	post '/support', to: 'support#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
