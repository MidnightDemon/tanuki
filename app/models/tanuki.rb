class Tanuki < ActiveRecord::Base
  attr_accessible :male, :name, :nature, :hue, :sepia, :brightness
  belongs_to :user

  validates :name,  :presence => true
  validates :male, :presence => true  
  validates :nature, :presence => true 
  validates :user_id, :presence => true 

  validates_inclusion_of :hue, :in => 0..360
  validates_inclusion_of :sepia, :in => 0..360
  validates_inclusion_of :brightness, :in => 0..360

	MALE_NAMES = Array.new(1)
	FEMALE_NAMES = Array.new(1)
	NATURES = Array.new(1)

	NAMES = YAML.load_file(Rails.root + "config/names.yml")

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

	def get_name
		if(self.male == true)
			NAMES["male"][self.name]["name"]
		else
			NAMES["female"][self.name]["name"]
		end
	end

	def get_name_meaning
		if(self.male == true)
			NAMES["male"][self.name]["descrip"]
		else
			NAMES["female"][self.name]["descrip"]
		end
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
