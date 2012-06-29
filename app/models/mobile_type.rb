class MobileType < ActiveRecord::Base
   has_and_belongs_to_many :softwares
end
