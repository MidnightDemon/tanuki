class CalendarEntry < ActiveRecord::Base
  attr_accessible :date, :content, :slot
  
  validates :date, :presence => true
  validates :slot,  :presence => true
  validates :content, :presence => true
  validates :user_id, :presence => true

  belongs_to :user

  TIME_SLOTS = ["Pre-breakfast snack", 
      "Breakfast", 
      "Pre-lunch snack", 
      "Lunch", 
      "Pre-dinner snack", 
      "Dinner", 
      "Dessert", 
      "Bed-time snack"]  

  def get_slot_name
    TIME_SLOTS[slot]
  end   
end

