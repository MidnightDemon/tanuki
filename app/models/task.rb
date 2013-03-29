class Task < ActiveRecord::Base
  attr_accessible :description, :icon, :completed
 
  validates :description, :presence => true,
  												:length => { :maximum => 50 }
												
end
