class SoftwareType < ActiveRecord::Base
  has_and_belongs_to_many :softwares
  
  belongs_to :parent, :class_name => "SoftwareType"
  has_many :children, :class_name => "SoftwareType", :foreign_key => :parent_id
end
