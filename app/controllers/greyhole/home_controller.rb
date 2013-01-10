# require_dependency "greyhole/application_controller"

module Greyhole
	class HomeController < ApplicationController
		before_filter :admin_required
		before_filter :no_subtabs

		#layout 'application'

		def index

		end
	end
end
