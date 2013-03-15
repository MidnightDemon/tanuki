# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FoodTime.delete_all
names = ["Pre-breakfast snack", 
		"Breakfast", 
		"Pre-lunch snack", 
		"Lunch", 
		"Pre-dinner snack", 
		"Dinner", 
		"Dessert", 
		"Bed-time snack"]

names.each do |name| 
	FoodTime.create!(:name => name)
end
