class GenerateTanuki
	NAMES = YAML.load_file(Rails.root + "/config/names.yml")
	NATURES = Array.new(1)

	file = File.new(Rails.root + "/config/natures.txt", "r")
	while (line = file.gets)
	  NATURES << line
	end
	file.close

	def generate
		tanuki = Tanuki.new
		tanuki.sepia = rand()*100
		tanuki.brightness = (rand()*20) + 90
		tanuki.hue = (rand()*30) - 15
		tanuki.nature = NATURES[rand(NATURES.count)]
		tanuki.male = [true, false].sample
		tanuki.name = NAMES[rand(NAMES.count)]

		rand1 = [true, false].sample
		rand2 = [true, false].sample
		rand3 = [true, false].sample

		if(rand1 && rand2 && rand3) 
			tanuki.hue = rand(360) - 180
		elsif(rand1 && rand2)
			tanuki.hue = rand(180) - 90
		else(rand1)
			tanuki.hue = rand(90) - 45  
		end
	end	
end
