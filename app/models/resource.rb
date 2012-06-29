class Resource < ActiveRecord::Base
  belongs_to :resource_data, :polymorphic => true
  
  scope :images, where(:file_type => 'img')
  scope :softwares, where(:file_type => 'software')
  scope :free, where(:resource_data_id => nil)
  
  def self.icon
    where(:file_type => 'icon').first
  end  
end
