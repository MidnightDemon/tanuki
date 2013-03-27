class CalendarEntry < ActiveRecord::Base
  attr_accessible :date, :slot, :content, :food_time_id
  
  belongs_to :food_time
  
  validates :date, :presence => true
  validates :food_time_id,  :presence => true
  validates :content, :presence => true

  def self.entries_for_date(year, month, date)
    time = Time.new(year, month, date)

    #"date > ? AND < ?", time.at_beginning_of_day, time.at_end_of_day
    where("date > ? AND date < ?", time.yesterday.at_beginning_of_day, time.at_beginning_of_day)
  end   

  def self.has_entry_for_date(year, month, date)
    entries_for_date(year, month, date).size
  end	
end

