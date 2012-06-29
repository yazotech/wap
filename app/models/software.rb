class Software < ActiveRecord::Base
  has_and_belongs_to_many :software_types
  has_and_belongs_to_many :mobile_types
  
  has_many :resources, :as => :resource_data, :dependent => :destroy
  accepts_nested_attributes_for :resources, :allow_destroy =>  true
  
end
