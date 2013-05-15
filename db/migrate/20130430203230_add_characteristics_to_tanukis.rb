class AddCharacteristicsToTanukis < ActiveRecord::Migration
  def change
  	add_column :tanukis, :hue, :integer, :default => 0
  	add_column :tanukis, :sepia, :integer, :default => 0
  	add_column :tanukis, :brightness, :integer, :default => 0
  end
end
