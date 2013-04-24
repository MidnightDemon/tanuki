class Tanuki < ActiveRecord::Base
  attr_accessible :male, :name

  belongs_to :user
  has_one :name
  has_one :nature

  validates :name,  :presence => true
  validates :male, :presence => true  
end
