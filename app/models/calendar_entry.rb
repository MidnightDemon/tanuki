class CalendarEntry < ActiveRecord::Base
  attr_accessible :date, :content, :slot
  
  validates :date, :presence => true
  validates :slot,  :presence => true
  validates :content, :presence => true
  validates :user_id, :presence => true

  belongs_to :user

  TIME_SLOTS = { 0 => "Pre-breakfast snack", 
       1 => "Breakfast", 
       2 => "Pre-lunch snack", 
       3 => "Lunch", 
       4 => "Pre-dinner snack", 
       5 => "Dinner", 
       6 => "Dessert",
       7 => "Bed-time snack"}  

 def self.get_time_slots
    TIME_SLOTS.invert
  end

  def get_slot_name
    TIME_SLOTS[slot]
  end   
end

