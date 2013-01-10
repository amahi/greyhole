#require_dependency "greyhole/application_controller"

class GreyholeController < ApplicationController
	before_filter :admin_required
	before_filter :no_subtabs

	def index
		pl = PartitionUtils.new.info
		@partitions = pl.delete_if do |p|
			p[:bytes_free] < 200.megabytes and not DiskPoolPartition.find_by_path(p[:path])
		end
		dppl = DiskPoolPartition.all
		@broken_disk_pool_partitions = dppl.delete_if do |dpp|
			! @partitions.select{|p| p[:path] == dpp.path}.empty?
		end
		@partitions = [{:bytes_free=>21924315136, :device=>"/dev/sda", :path=>"/", :bytes_total=>111936864256}, {:bytes_free=>1313666871296, :device=>"/dev/sdd", :path=>"/home", :bytes_total=>1476758294528}, {:bytes_free=>67888459776, :device=>"/dev/sde", :path=>"/mnt/media", :bytes_total=>984505196544}, {:bytes_free=>59419136000, :device=>"/dev/sdc", :path=>"/mnt/1tb-sata-1", :bytes_total=>984506441728}, {:bytes_free=>394050961408, :device=>"/dev/sdb", :path=>"/mnt/1-5-tb-sata", :bytes_total=>1476756697088}]
	end

end
