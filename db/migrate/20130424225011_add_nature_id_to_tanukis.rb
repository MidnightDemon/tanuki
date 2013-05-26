class AddNatureIdToTanukis < ActiveRecord::Migration
  def change
  	add_column :tanukis, :nature_id, :integer
  end
end
