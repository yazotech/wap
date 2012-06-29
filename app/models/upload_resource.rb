class UploadResource < ActiveRecord::Base
  belongs_to :resource_data, :polymorphic => true 
end
