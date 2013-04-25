class DropNatures < ActiveRecord::Migration
  def change
    drop_table :natures
  end  
end
