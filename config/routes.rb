Greyhole::Engine.routes.draw do
	# root of the plugin
        root :to => 'greyhole#index'
	# examples of controllers built in this generator. delete at will
	match 'shares' => 'greyhole#shares'
end
