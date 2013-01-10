Greyhole::Engine.routes.draw do
	#themes_for_rails
	#resources :users
	#resources :apps
	#resources :shares

	#match 'logout' => 'user_sessions#destroy', :as => :logout

	root :to => 'greyhole#index'
end
