class CalendarEntry < ActiveRecord::Base
  attr_accessible :date, :slot, :content
 
  validates :date,  :presence => true
  validates :slot, :presence => true
  validates :content, :presence => true
end
