class CreateDiskPoolPartitions < ActiveRecord::Migration
	def self.up

		# protect against partial failures to uninstall
		execute "DROP TABLE IF EXISTS 'disk_pool_partitions'"

		create_table :disk_pool_partitions do |t|
			t.string	:path
			t.integer	:minimum_free, :default => 10
			t.timestamps
		end
	end

	def self.down
		drop_table :disk_pool_partitions
	end
end
