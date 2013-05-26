class DropFoodTimes < ActiveRecord::Migration
  def change
  	drop_table :food_times
  end
end
