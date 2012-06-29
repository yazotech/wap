class CreateSoftwareTypes < ActiveRecord::Migration
  def self.up
    create_table :software_types do |t|
      t.string :title
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :software_types
  end
end
