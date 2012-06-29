class CreateSoftwareTypeMaps < ActiveRecord::Migration
  def self.up
    create_table :software_types_softwares, :id => false do |t|
      t.integer :software_id
      t.integer :software_type_id
    end
  end

  def self.down
    drop_table :software_types_softwares
  end
end
