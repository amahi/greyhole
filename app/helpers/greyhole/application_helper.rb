
module Greyhole
	module ApplicationHelper
		# put up warnings for / and /media mounts
		def optional_warnings(path)
			url = nil
			wiki = "http://wiki.amahi.org/index.php"
			# warning for /media _disk_pooling_partition_checkbox.html.erb - see bug #616
			if path == '/'
				url = link_to(theme_image_tag("more.png", :title => 'Greyhole not on root'), "#{wiki}/Greyhole_not_on_root")
			elsif path =~ /^\/media/
				url = link_to(theme_image_tag("more.png", :title => 'Greyhole not on /media'), "#{wiki}/Greyhole#.2Fmedia")
			end
			return "" unless url
			url = theme_image_tag("danger.png") + url
			raw "<span style=\"float: right\">#{url}</span>"
		end
	end
end
