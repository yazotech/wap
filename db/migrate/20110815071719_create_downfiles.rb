class CreateDownfiles < ActiveRecord::Migration
  def self.up
    create_table :downfiles do |t|
      t.integer :software_id
      t.string :file_name
      t.string :Platform

      t.timestamps
    end
  end

  def self.down
    drop_table :downfiles
  end
end
