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

FemaleName.delete_all
open("f-names.txt") do |fnames|
  fnames.read.each_line do |name|
    name, description = country.chomp.split(",", 2)
    description.chop!.slice!(0)
    FemaleName.create!(:name => name)
  end
end

MaleName.delete_all
open("m-names.txt") do |mnames|
  mnames.read.each_line do |name|
    name, description = country.chomp.split(",", 2)
    description.chop!.slice!(0)
    MaleName.create!(:name => name)
  end
end

Nature.delete_all
open("natures.txt") do |natures|
  natures.read.each_line do |nature|
    nature.chomp!
    Nature.create!(:description => nature)
  end
end
