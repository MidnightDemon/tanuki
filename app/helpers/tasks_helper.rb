module TasksHelper

	def get_list_of_icons
		Dir.foreach('/path/to/dir') do |item|
	  	next if item == '.' or item == '..'
	  	# do work on real items
		end
	end
end
