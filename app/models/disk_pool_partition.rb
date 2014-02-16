# Amahi Home Server
# Copyright (C) 2007-2014 Amahi
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License v3
# (29 June 2007), as published in the COPYING file.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# file COPYING for more details.
#
# You should have received a copy of the GNU General Public
# License along with this program; if not, write to the Amahi
# team at http://www.amahi.org/ under "Contact Us."

class DiskPoolPartition < ActiveRecord::Base
	include Greyhole

	after_save	:generate_confguration
	after_create	:generate_confguration
	after_destroy	:generate_confguration

	def self.enabled?(path)
		p = self.find_by_path(path)
		! p.nil?
	end

protected

	def generate_confguration
		Greyhole.save_conf_file(DiskPoolPartition.all, Share.in_disk_pool)
	end
end
