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

  def self.entries_for_date(year, month, date)
    time = Time.new(year, month, date)

    #"date > ? AND < ?", time.at_beginning_of_day, time.at_end_of_day
    where("date > ? AND date < ?", time.yesterday.at_beginning_of_day, time.at_beginning_of_day)
  end   

  def self.has_entry_for_date(year, month, date)
    entries_for_date(year, month, date).size
  end	
end

