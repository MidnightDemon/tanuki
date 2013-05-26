class DropFemaleNames < ActiveRecord::Migration
  def change
    drop_table :female_names
  end  
end
