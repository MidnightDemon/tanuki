class Tanuki < ActiveRecord::Base
  attr_accessible :male, :name, :nature, :hue, :sepia, :brightness, :user_id

  belongs_to :user

  validates :name,  :presence => true
  validates :nature, :presence => true 
  validates :user_id, :presence => true 

  validates_inclusion_of :hue, :in => -180..180
  validates_inclusion_of :sepia, :in => 0..100
  validates_inclusion_of :brightness, :in => 90..110

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

	def generate_characteristics
		self.sepia = rand()*100
		self.brightness = (rand()*20) + 90
		self.hue = (rand()*30) - 15
		self.nature = rand(NATURES.count)
		self.male = false

		rand1 = [true, false].sample
		rand2 = [true, false].sample
		rand3 = [true, false].sample

		if(rand1 && rand2 && rand3) 
			self.hue = rand(360) - 180
		elsif(rand1 && rand2)
			self.hue = rand(180) - 90
		else(rand1)
			self.hue = rand(90) - 45  
		end

	  if([true, false].sample)
  		self.male = true
      self.name = Tanuki.get_random_male_name
  	else
      self.name = Tanuki.get_random_female_name
  	end
	end	

	def self.get_random_male_name
		rand(MALE_NAMES.count)
	end

	def self.get_random_female_name
		rand(FEMALE_NAMES.count)
	end	

	def get_hue
		self.hue.to_s
	end	

	def get_brightness
		self.brightness.to_s
	end

	def get_sepia
		self.sepia.to_s
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

	private 
	def is_under_limit
    return true unless self.user.present?
    self.user.tanukis.count < self.user.tanuki_limit || !self.new_record?
  end		
end
