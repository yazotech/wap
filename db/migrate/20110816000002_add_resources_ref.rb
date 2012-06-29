class AddResourcesRef < ActiveRecord::Migration
  def self.up
    add_column :resources, :resource_data_type, :string
    add_column :resources, :resource_data_id, :integer
  end

  def self.down
    del_column :resources, :resource_data_type
    del_column :resources, :resource_date_id
  end
end
