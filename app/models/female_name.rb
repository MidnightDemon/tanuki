class FemaleName < ActiveRecord::Base
  attr_accessible :name

  has_many :tanukis
end
