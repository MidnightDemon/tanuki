class Task < ActiveRecord::Base
  attr_accessible :description, :icon, :completed, :user_id

  belongs_to :user
 
  validates :description, :presence => true,
  												:length => { :maximum => 50 }
  validates :user_id, :presence => true												
												
end
