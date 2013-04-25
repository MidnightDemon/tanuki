class Tanuki < ActiveRecord::Base
  attr_accessible :male, :name_id, :nature_id

  belongs_to :user
  has_one :female_name or :male_name
  has_one :nature

  validates :name,  :presence => true
  validates :male, :presence => true  
end
