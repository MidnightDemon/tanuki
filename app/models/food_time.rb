class FoodTime < ActiveRecord::Base
  attr_accessible :name
  
  has_many :calendar_entries
 
  validates :name,  :presence => true
end
