class Tanuki < ActiveRecord::Base
  attr_accessible :male, :name, :nature

  belongs_to :user

  validates :name,  :presence => true
  validates :male, :presence => true  
  validates :nature, :presence => true 

=begin
	open(File.join(File.dirname(__FILE__), "f-names.txt")) do |fnames|
	  fnames.read.each_line_with_index do |name, index|
	    name, description = name.chomp.split(",", 2)
	    description.chop!.slice!(0)
	    newname = FemaleName.create!(:name => name)
	    newname.id = index
	  end
	end  

	open(File.join(File.dirname(__FILE__), "m-names.txt")) do |mnames|
	  mnames.read.each_line_with_index do |name, index|
	    name, description = name.chomp.split(",", 2)
	    description.chop!.slice!(0)
	    newname = MaleName.create!(:name => name)
	    newname.id = index
	  end
	end

	open(File.join(File.dirname(__FILE__), "natures.txt")) do |natures|
	  natures.read.each_line_with_index do |nature, index|
	    nature.chomp!
	    newnature = Nature.create!(:description => nature)
	    newnature.id = index
	  end
	end	
=end
end
