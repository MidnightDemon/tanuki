class CalendarEntry < ActiveRecord::Base
  attr_accessible :date, :slot, :content, :food_time_id
  
  belongs_to :food_time
  
  validates :date, :presence => true
  validates :food_time_id,  :presence => true
  validates :content, :presence => true
end
