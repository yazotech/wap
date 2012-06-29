class AddSoftwareParent < ActiveRecord::Migration
  def self.up
    add_column :software_types, :parent_id, :integer
  end

  def self.down
    del_column :software_types, :parent_id
  end
end
