class Tanuki < ActiveRecord::Base
  attr_accessible :male, :name, :nature

  belongs_to :user

  validates :name,  :presence => true
  validates :male, :presence => true  
  validates :nature, :presence => true 

	MALE_NAMES = Array.new(1)
	FEMALE_NAMES = Array.new(1)
	NATURES = Array.new(1)


	open(File.join(File.dirname(__FILE__), "m-names.txt")) do |mnames|
	  mnames.read.each_line do |name, index|
	    name, description = name.chomp.split(",", 2)
	    description.chop!.slice!(0)
	    MALE_NAMES << [name, description]
	  end
	end

	open(File.join(File.dirname(__FILE__), "f-names.txt")) do |fnames|
	  fnames.read.each_line do |name, index|
	    name, description = name.chomp.split(",", 2)
	    description.chop!.slice!(0)
	    FEMALE_NAMES << [name, description]
	  end
	end	

	open(File.join(File.dirname(__FILE__), "natures.txt")) do |natures|
	  natures.read.each_line do |nature, index|
	    nature.chomp!
	    NATURES << nature
	  end
	end	

	def self.get_random_male_name
		rand(MALE_NAMES.count)
	end

	def self.get_random_female_name
		rand(FEMALE_NAMES.count)
	end	

	def self.get_random_nature
		rand(NATURES.count)
	end	

	def get_name
		if(self.male == true)
			MALE_NAMES[self.name][0]
		else
			FEMALE_NAMES[self.name][0]
		end
	end

	def get_name_meaning
		if(self.male == true)
			MALE_NAMES[self.name][1]
		else
			FEMALE_NAMES[self.name][1]
		end
	end	

	def is_male
		self.male
	end		

	def get_nature
		NATURES[self.nature]
	end		
end
