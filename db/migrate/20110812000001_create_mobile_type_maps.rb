class CreateMobileTypeMaps < ActiveRecord::Migration
  def self.up
    create_table :mobile_types_softwares, :id => false do |t|
      t.integer :software_id
      t.integer :mobile_type_id
    end
  end

  def self.down
    drop_table :mobile_types_softwares
  end
end
