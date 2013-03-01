class FoodTime < ActiveRecord::Base
  attr_accessible :slot, :name
  
  has_many :calendar_entries
 
  validates :name,  :presence => true
  validates :slot, :presence => true
end
