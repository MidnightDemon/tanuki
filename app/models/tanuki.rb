class Tanuki < ActiveRecord::Base
  attr_accessible :male, :name, :nature, :hue, :sepia, :brightness
  belongs_to :user

  validates :name,  :presence => true
  validates :male, :presence => true  
  validates :nature, :presence => true 

  validates_inclusion_of :hue, :in => 0..360
  validates_inclusion_of :sepia, :in => 0..360
  validates_inclusion_of :brightness, :in => 0..360

	private
  def is_under_limit
    return true unless self.user.present?
    self.user.tanukis.count < self.user.tanuki_limit || !self.new_record?
  end		
end
