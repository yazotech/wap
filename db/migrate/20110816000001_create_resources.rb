class CreateResources < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.string :original_filename
      t.string :ext
      t.string :file_type
      t.timestamps
    end
  end

  def self.down
    drop_table :resources
  end
end
